package ca.blackperl.fieldsets.actions;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import ca.blackperl.fieldsets.WelcomeForm;
import ca.blackperl.fieldsets.beans.Leaf;
import ca.blackperl.fieldsets.beans.Node;
import ca.blackperl.fieldsets.beans.Tree;

public class WelcomeAction extends Action {
	
	private final class BuildDirectoryTree extends SimpleFileVisitor<Path> {
		private Stack<List<Node>> stack = new Stack<List<Node>>();
		private List<Node> directoryTree = new ArrayList<Node>();

		public List<Node> getDirectoryTree() {
			return directoryTree;
		}

		@Override
		public FileVisitResult preVisitDirectory(Path dir,
				BasicFileAttributes attrs) throws IOException {
			
			List<Node> subdirectory = new ArrayList<Node>();

			directoryTree.add(new Tree(subdirectory));

			stack.push(directoryTree);
			
			directoryTree = subdirectory;
			
			return super.preVisitDirectory(dir, attrs);
		}

		@Override
		public FileVisitResult visitFile(Path file,
				BasicFileAttributes attrs) throws IOException {

			directoryTree.add( new Leaf(file));
			
			return super.visitFile(file, attrs);
		}

		@Override
		public FileVisitResult postVisitDirectory(Path dir, IOException exc)
				throws IOException {
			
			directoryTree = stack.pop();
			
			return super.postVisitDirectory(dir, exc);
		}
	}

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		WelcomeForm welcomeForm = (WelcomeForm) form;

		File file = new File(".");

		String absolutePath = file.getAbsolutePath();

		Path path = file.toPath();

		BuildDirectoryTree simpleFileVisitor = new BuildDirectoryTree();
		
		Path walkFileTree = Files.walkFileTree(path, simpleFileVisitor);

		return mapping.getInputForward();
	}
}

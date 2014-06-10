package ca.blackperl.fieldsets.beans;

import java.util.List;

public class Tree implements Node {
	
	private List<Node> tree;

	public Tree(List<Node> subdirectory) {
		tree = subdirectory;
	}

	public List<Node> getTree() {
		return tree;
	}

	public void setTree(List<Node> tree) {
		this.tree = tree;
	}
}

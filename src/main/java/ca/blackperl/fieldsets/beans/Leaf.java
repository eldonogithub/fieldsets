package ca.blackperl.fieldsets.beans;

import java.nio.file.Path;

public class Leaf implements Node {

	private Path path;

	public Leaf(Path file) {
		path = file;
	}

	public Path getPath() {
		return path;
	}

	public void setPath(Path path) {
		this.path = path;
	}
	
}

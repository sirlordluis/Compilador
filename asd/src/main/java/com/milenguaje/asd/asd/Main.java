
package com.milenguaje.asd.asd;
import java.io.IOException;


import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.CommonTokenStream;
import java.io.IOException;
public class Main {

	private static final String EXTENSION = "smp";

	public static void main(String[] args) throws IOException {
		String program = args.length > 1 ? args[1] : "test/test." + EXTENSION;

		System.out.println("Interpreting file " + program);

		SimpleLexer lexer = new SimpleLexer(new ANTLRFileStream(program));
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		SimpleParser parser = new SimpleParser(tokens);

		SimpleParser.StartContext tree = parser.start();

		SimpleCustomVisitor visitor = new SimpleCustomVisitor();
		visitor.visit(tree);

		System.out.println("Interpretation finished");

	}

}
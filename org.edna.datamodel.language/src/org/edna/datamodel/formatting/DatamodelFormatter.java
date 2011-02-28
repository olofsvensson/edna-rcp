/*
 * generated by Xtext
 */
package org.edna.datamodel.formatting;

import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter;
import org.eclipse.xtext.formatting.impl.FormattingConfig;
import org.eclipse.xtext.util.Pair;
import org.edna.datamodel.services.DatamodelGrammarAccess;

/**
 * This class contains custom formatting description.
 *
 * see : http://www.eclipse.org/Xtext/documentation/latest/xtext.html#formatting
 * on how and when to use it
 *
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 */
public class DatamodelFormatter extends AbstractDeclarativeFormatter {

	@Override
	protected void configureFormatting(FormattingConfig c) {
		DatamodelGrammarAccess f = (DatamodelGrammarAccess) getGrammarAccess();

		c.setAutoLinewrap(120);

		// formatting for Comments
		c.setLinewrap(0, 1, 2).before(f.getSL_COMMENTRule());
		c.setLinewrap(0, 1, 2).before(f.getML_COMMENTRule());
		c.setLinewrap(0, 1, 1).after(f.getML_COMMENTRule());

		// Find elements which declare their body in curly brackets.
		// - Increment Indentation for the body.
		// - Line wrap before opening and after closing element
		for (Pair<Keyword, Keyword> pair : f.findKeywordPairs("{", "}")) {
			c.setIndentation(pair.getFirst(), pair.getSecond());
			c.setLinewrap().after(pair.getFirst());
			c.setLinewrap().around(pair.getSecond());

			Keyword openingBrace = pair.getFirst();
			Group containingGroup = (Group) openingBrace.eContainer();

			// Top-most elements with brackets: Insert blank lines
			if (containingGroup.eContainer().eContainer() instanceof Grammar) {
				c.setLinewrap(0, 1, 2).before(containingGroup);
				c.setLinewrap(2, 2, 3).after(containingGroup);
			}
		}

		// Line break at beginning of an element declaration
		c.setLinewrap(0,1,2).before(f.getElementDeclarationRule());

		// Insert blank line after targetNamespace delcaration
		c.setLinewrap(2,2,3).after(f.getModelAccess().getTargetNamespaceAssignment_0_1());

		// Suppress line break after the colon of an element declaration
		c.setLinewrap(0).around(f.getElementDeclarationAccess().getColonKeyword_1());

	}


}

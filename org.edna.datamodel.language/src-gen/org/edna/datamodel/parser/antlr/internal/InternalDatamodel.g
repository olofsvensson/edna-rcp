/*
* generated by Xtext
*/
grammar InternalDatamodel;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.edna.datamodel.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.edna.datamodel.parser.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.xtext.parsetree.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.conversion.ValueConverterException;
import org.edna.datamodel.services.DatamodelGrammarAccess;

}

@parser::members {

 	private DatamodelGrammarAccess grammarAccess;
 	
    public InternalDatamodelParser(TokenStream input, IAstFactory factory, DatamodelGrammarAccess grammarAccess) {
        this(input);
        this.factory = factory;
        registerRules(grammarAccess.getGrammar());
        this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected InputStream getTokenFile() {
    	ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/edna/datamodel/parser/antlr/internal/InternalDatamodel.tokens");
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected DatamodelGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getModelRule(), currentNode); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((	'targetNamespace' 
    {
        createLeafNode(grammarAccess.getModelAccess().getTargetNamespaceKeyword_0_0(), null); 
    }
(
(
		lv_targetNamespace_1_0=RULE_STRING
		{
			createLeafNode(grammarAccess.getModelAccess().getTargetNamespaceSTRINGTerminalRuleCall_0_1_0(), "targetNamespace"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getModelRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"targetNamespace",
	        		lv_targetNamespace_1_0, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
))(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getModelAccess().getImportsImportParserRuleCall_1_0(), currentNode); 
	    }
		lv_imports_2_0=ruleImport		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getModelRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"imports",
	        		lv_imports_2_0, 
	        		"Import", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)*((
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getModelAccess().getTypesComplexTypeParserRuleCall_2_0_0(), currentNode); 
	    }
		lv_types_3_0=ruleComplexType		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getModelRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"types",
	        		lv_types_3_0, 
	        		"ComplexType", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getModelAccess().getPackagesPackageParserRuleCall_2_1_0(), currentNode); 
	    }
		lv_packages_4_0=rulePackage		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getModelRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"packages",
	        		lv_packages_4_0, 
	        		"Package", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))*)
;





// Entry rule entryRuleImport
entryRuleImport returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getImportRule(), currentNode); }
	 iv_ruleImport=ruleImport 
	 { $current=$iv_ruleImport.current; } 
	 EOF 
;

// Rule Import
ruleImport returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'import' 
    {
        createLeafNode(grammarAccess.getImportAccess().getImportKeyword_0(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameWithWildCardParserRuleCall_1_0(), currentNode); 
	    }
		lv_importedNamespace_1_0=ruleQualifiedNameWithWildCard		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getImportRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"importedNamespace",
	        		lv_importedNamespace_1_0, 
	        		"QualifiedNameWithWildCard", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))
;





// Entry rule entryRulePackage
entryRulePackage returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getPackageRule(), currentNode); }
	 iv_rulePackage=rulePackage 
	 { $current=$iv_rulePackage.current; } 
	 EOF 
;

// Rule Package
rulePackage returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'package' 
    {
        createLeafNode(grammarAccess.getPackageAccess().getPackageKeyword_0(), null); 
    }
(
(
		lv_name_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getPackageAccess().getNameIDTerminalRuleCall_1_0(), "name"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getPackageRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"name",
	        		lv_name_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	'{' 
    {
        createLeafNode(grammarAccess.getPackageAccess().getLeftCurlyBracketKeyword_2(), null); 
    }
((
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getPackageAccess().getTypesComplexTypeParserRuleCall_3_0_0(), currentNode); 
	    }
		lv_types_3_0=ruleComplexType		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getPackageRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"types",
	        		lv_types_3_0, 
	        		"ComplexType", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getPackageAccess().getPackagesPackageParserRuleCall_3_1_0(), currentNode); 
	    }
		lv_packages_4_0=rulePackage		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getPackageRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"packages",
	        		lv_packages_4_0, 
	        		"Package", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))*	'}' 
    {
        createLeafNode(grammarAccess.getPackageAccess().getRightCurlyBracketKeyword_4(), null); 
    }
)
;





// Entry rule entryRuleComplexType
entryRuleComplexType returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getComplexTypeRule(), currentNode); }
	 iv_ruleComplexType=ruleComplexType 
	 { $current=$iv_ruleComplexType.current; } 
	 EOF 
;

// Rule ComplexType
ruleComplexType returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'complex' 
    {
        createLeafNode(grammarAccess.getComplexTypeAccess().getComplexKeyword_0(), null); 
    }
	'type' 
    {
        createLeafNode(grammarAccess.getComplexTypeAccess().getTypeKeyword_1(), null); 
    }
(
(
		lv_name_2_0=RULE_ID
		{
			createLeafNode(grammarAccess.getComplexTypeAccess().getNameIDTerminalRuleCall_2_0(), "name"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getComplexTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"name",
	        		lv_name_2_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)(	'extends' 
    {
        createLeafNode(grammarAccess.getComplexTypeAccess().getExtendsKeyword_3_0(), null); 
    }
(
(
		{
			if ($current==null) {
	            $current = factory.create(grammarAccess.getComplexTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
        }
		{ 
	        currentNode=createCompositeNode(grammarAccess.getComplexTypeAccess().getBaseTypeComplexTypeCrossReference_3_1_0(), currentNode); 
	    }
		ruleQualifiedName		{ 
	        currentNode = currentNode.getParent();
	    }

)
))?	'{' 
    {
        createLeafNode(grammarAccess.getComplexTypeAccess().getLeftCurlyBracketKeyword_4(), null); 
    }
(
(
		lv_doc_6_0=RULE_STRING
		{
			createLeafNode(grammarAccess.getComplexTypeAccess().getDocSTRINGTerminalRuleCall_5_0(), "doc"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getComplexTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"doc",
	        		lv_doc_6_0, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getComplexTypeAccess().getElementsElementDeclarationParserRuleCall_6_0(), currentNode); 
	    }
		lv_elements_7_0=ruleElementDeclaration		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getComplexTypeRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"elements",
	        		lv_elements_7_0, 
	        		"ElementDeclaration", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)*	'}' 
    {
        createLeafNode(grammarAccess.getComplexTypeAccess().getRightCurlyBracketKeyword_7(), null); 
    }
)
;





// Entry rule entryRuleElementDeclaration
entryRuleElementDeclaration returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getElementDeclarationRule(), currentNode); }
	 iv_ruleElementDeclaration=ruleElementDeclaration 
	 { $current=$iv_ruleElementDeclaration.current; } 
	 EOF 
;

// Rule ElementDeclaration
ruleElementDeclaration returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
		lv_name_0_0=RULE_ID
		{
			createLeafNode(grammarAccess.getElementDeclarationAccess().getNameIDTerminalRuleCall_0_0(), "name"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getElementDeclarationRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"name",
	        		lv_name_0_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	':' 
    {
        createLeafNode(grammarAccess.getElementDeclarationAccess().getColonKeyword_1(), null); 
    }
((
(
		{
			if ($current==null) {
	            $current = factory.create(grammarAccess.getElementDeclarationRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
        }
		{ 
	        currentNode=createCompositeNode(grammarAccess.getElementDeclarationAccess().getRefComplexTypeCrossReference_2_0_0(), currentNode); 
	    }
		ruleQualifiedName		{ 
	        currentNode = currentNode.getParent();
	    }

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getElementDeclarationAccess().getTypePrimitiveTypeEnumRuleCall_2_1_0(), currentNode); 
	    }
		lv_type_3_0=rulePrimitiveType		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getElementDeclarationRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"type",
	        		lv_type_3_0, 
	        		"PrimitiveType", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))(
(
		lv_multiple_4_0=	'[]' 
    {
        createLeafNode(grammarAccess.getElementDeclarationAccess().getMultipleLeftSquareBracketRightSquareBracketKeyword_3_0(), "multiple"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getElementDeclarationRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "multiple", true, "[]", lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?(
(
		lv_optional_5_0=	'optional' 
    {
        createLeafNode(grammarAccess.getElementDeclarationAccess().getOptionalOptionalKeyword_4_0(), "optional"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getElementDeclarationRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "optional", true, "optional", lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?(
(
		lv_doc_6_0=RULE_STRING
		{
			createLeafNode(grammarAccess.getElementDeclarationAccess().getDocSTRINGTerminalRuleCall_5_0(), "doc"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getElementDeclarationRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"doc",
	        		lv_doc_6_0, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?)
;





// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getQualifiedNameRule(), currentNode); } 
	 iv_ruleQualifiedName=ruleQualifiedName 
	 { $current=$iv_ruleQualifiedName.current.getText(); }  
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    createLeafNode(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0(), null); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0(), null); 
    }
    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    createLeafNode(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1(), null); 
    }
)*)
    ;





// Entry rule entryRuleQualifiedNameWithWildCard
entryRuleQualifiedNameWithWildCard returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getQualifiedNameWithWildCardRule(), currentNode); } 
	 iv_ruleQualifiedNameWithWildCard=ruleQualifiedNameWithWildCard 
	 { $current=$iv_ruleQualifiedNameWithWildCard.current.getText(); }  
	 EOF 
;

// Rule QualifiedNameWithWildCard
ruleQualifiedNameWithWildCard returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(
    { 
        currentNode=createCompositeNode(grammarAccess.getQualifiedNameWithWildCardAccess().getQualifiedNameParserRuleCall_0(), currentNode); 
    }
    this_QualifiedName_0=ruleQualifiedName    {
		$current.merge(this_QualifiedName_0);
    }

    { 
        currentNode = currentNode.getParent();
    }
(
	kw='.*' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getQualifiedNameWithWildCardAccess().getFullStopAsteriskKeyword_1(), null); 
    }
)?)
    ;





// Rule PrimitiveType
rulePrimitiveType returns [Enumerator current=null] 
    @init { setCurrentLookahead(); resetLookahead(); }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((	'undefined' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getUndefinedEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        createLeafNode(grammarAccess.getPrimitiveTypeAccess().getUndefinedEnumLiteralDeclaration_0(), null); 
    }
)
    |(	'string' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getStringEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        createLeafNode(grammarAccess.getPrimitiveTypeAccess().getStringEnumLiteralDeclaration_1(), null); 
    }
)
    |(	'integer' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getIntegerEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        createLeafNode(grammarAccess.getPrimitiveTypeAccess().getIntegerEnumLiteralDeclaration_2(), null); 
    }
)
    |(	'boolean' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getBooleanEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
        createLeafNode(grammarAccess.getPrimitiveTypeAccess().getBooleanEnumLiteralDeclaration_3(), null); 
    }
)
    |(	'float' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getFloatEnumLiteralDeclaration_4().getEnumLiteral().getInstance();
        createLeafNode(grammarAccess.getPrimitiveTypeAccess().getFloatEnumLiteralDeclaration_4(), null); 
    }
)
    |(	'double' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getDoubleEnumLiteralDeclaration_5().getEnumLiteral().getInstance();
        createLeafNode(grammarAccess.getPrimitiveTypeAccess().getDoubleEnumLiteralDeclaration_5(), null); 
    }
));



RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;



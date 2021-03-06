/*
 * This class was automatically generated with 
 * <a href="http://www.castor.org">Castor 1.3</a>, using an XML
 * Schema.
 * $Id$
 */

package org.edna.mxv1.xsdata;

/**
 * Class XSDataChemicalCompositionMM.
 * 
 * @version $Revision$ $Date$
 */
@SuppressWarnings("serial")
public class XSDataChemicalCompositionMM extends org.edna.mxv1.xsdata.XSData 
implements java.io.Serializable
{


      //--------------------------/
     //- Class/Member Variables -/
    //--------------------------/

    /**
     * Field _solvent.
     */
    private org.edna.mxv1.xsdata.XSDataSolvent _solvent;

    /**
     * Field _structure.
     */
    private org.edna.mxv1.xsdata.XSDataStructure _structure;


      //----------------/
     //- Constructors -/
    //----------------/

    public XSDataChemicalCompositionMM() {
        super();
    }


      //-----------/
     //- Methods -/
    //-----------/

    /**
     * Returns the value of field 'solvent'.
     * 
     * @return the value of field 'Solvent'.
     */
    public org.edna.mxv1.xsdata.XSDataSolvent getSolvent(
    ) {
        return this._solvent;
    }

    /**
     * Returns the value of field 'structure'.
     * 
     * @return the value of field 'Structure'.
     */
    public org.edna.mxv1.xsdata.XSDataStructure getStructure(
    ) {
        return this._structure;
    }

    /**
     * Method isValid.
     * 
     * @return true if this object is valid according to the schema
     */
    public boolean isValid(
    ) {
        try {
            validate();
        } catch (org.exolab.castor.xml.ValidationException vex) {
            return false;
        }
        return true;
    }

    /**
     * 
     * 
     * @param out
     * @throws org.exolab.castor.xml.MarshalException if object is
     * null or if any SAXException is thrown during marshaling
     * @throws org.exolab.castor.xml.ValidationException if this
     * object is an invalid instance according to the schema
     */
    public void marshal(
            final java.io.Writer out)
    throws org.exolab.castor.xml.MarshalException, org.exolab.castor.xml.ValidationException {
        org.exolab.castor.xml.Marshaller.marshal(this, out);
    }

    /**
     * 
     * 
     * @param handler
     * @throws java.io.IOException if an IOException occurs during
     * marshaling
     * @throws org.exolab.castor.xml.ValidationException if this
     * object is an invalid instance according to the schema
     * @throws org.exolab.castor.xml.MarshalException if object is
     * null or if any SAXException is thrown during marshaling
     */
    public void marshal(
            final org.xml.sax.ContentHandler handler)
    throws java.io.IOException, org.exolab.castor.xml.MarshalException, org.exolab.castor.xml.ValidationException {
        org.exolab.castor.xml.Marshaller.marshal(this, handler);
    }

    /**
     * Sets the value of field 'solvent'.
     * 
     * @param solvent the value of field 'solvent'.
     */
    public void setSolvent(
            final org.edna.mxv1.xsdata.XSDataSolvent solvent) {
        this._solvent = solvent;
    }

    /**
     * Sets the value of field 'structure'.
     * 
     * @param structure the value of field 'structure'.
     */
    public void setStructure(
            final org.edna.mxv1.xsdata.XSDataStructure structure) {
        this._structure = structure;
    }

    /**
     * Method unmarshalXSDataChemicalCompositionMM.
     * 
     * @param reader
     * @throws org.exolab.castor.xml.MarshalException if object is
     * null or if any SAXException is thrown during marshaling
     * @throws org.exolab.castor.xml.ValidationException if this
     * object is an invalid instance according to the schema
     * @return the unmarshaled
     * org.edna.mxv1.xsdata.XSDataChemicalCompositionMM
     */
    public static org.edna.mxv1.xsdata.XSDataChemicalCompositionMM unmarshalXSDataChemicalCompositionMM(
            final java.io.Reader reader)
    throws org.exolab.castor.xml.MarshalException, org.exolab.castor.xml.ValidationException {
        return (org.edna.mxv1.xsdata.XSDataChemicalCompositionMM) org.exolab.castor.xml.Unmarshaller.unmarshal(org.edna.mxv1.xsdata.XSDataChemicalCompositionMM.class, reader);
    }

    /**
     * 
     * 
     * @throws org.exolab.castor.xml.ValidationException if this
     * object is an invalid instance according to the schema
     */
    public void validate(
    )
    throws org.exolab.castor.xml.ValidationException {
        org.exolab.castor.xml.Validator validator = new org.exolab.castor.xml.Validator();
        validator.validate(this);
    }

}

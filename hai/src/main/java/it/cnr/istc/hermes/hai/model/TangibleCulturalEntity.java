package it.cnr.istc.hermes.hai.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Tangible cultural entity class
 * 
 */
public class TangibleCulturalEntity extends CulturalEntity {

    private List<CulturalEntity> correlatedEntities;
    private CulturalEntity partOf;
    private CulturalEditorActor editorActor;

    // data properties
    private long visitingTime;          // estimated duration of a visit
    private String visitability;        // info about the visitability 
    private double longitude;
    private double latitude;
    private String openHours;
    private boolean accMotorDisab;
    private boolean accHearingDisab;
    private boolean accVisualDisab;
    private String price;
    private boolean groupVisit;
    private boolean accElderly;
    private String address;

    /**
     * 
     * @param detailed
     */
    public TangibleCulturalEntity(boolean detailed) {
        super(true, detailed);
        this.correlatedEntities = new ArrayList<>();
    }

    public void setCorrelatedEntities(List<CulturalEntity> associatedEntities) {
        this.correlatedEntities = associatedEntities;
    }

    public List<CulturalEntity> getCorrelatedEntities() {
        return correlatedEntities;
    }

    public CulturalEntity getPartOf() {
        return partOf;
    }

    public void setPartOf(CulturalEntity partOf) {
        this.partOf = partOf;
    }

    public CulturalEditorActor getEditorActor() {
        return editorActor;
    }

    public void setEditorActor(CulturalEditorActor editorActor) {
        this.editorActor = editorActor;
    }
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getLatitude() {
        return latitude;
    }
    
    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getOpenHours() {
        return openHours;
    }

    public void setOpenHours(String openHours) {
        this.openHours = openHours;
     
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getVisitability() {
        return visitability;
    }

    public void setVisitability(String visitability) {
        this.visitability = visitability;
    }

    public long getVisitingTime() {
        return visitingTime;
    }

    public void setVisitingTime(long visitingTime) {
        this.visitingTime = visitingTime;
    }

    public boolean isAccMotorDisab() {
        return accMotorDisab;
    }
    
    public void setAccMotorDisab(boolean accMotorDisab) {
        this.accMotorDisab = accMotorDisab;
    }

    public boolean isAccElderly() {
        return accElderly;
    }

    public void setAccElderly(boolean accElderly) {
        this.accElderly = accElderly;
    }

    public boolean isGroupVisit() {
        return groupVisit;
    }

    public void setGroupVisit(boolean groupVisit) {
        this.groupVisit = groupVisit;
    }

    public void setAccHearingDisab(boolean accHearingDisab) {
        this.accHearingDisab = accHearingDisab;
    }

    public void setAccVisualDisab(boolean accVisualDisab) {
        this.accVisualDisab = accVisualDisab;
    }

    public boolean isAccHearingDisab() {
        return accHearingDisab;
    }
    public boolean isAccVisualDisab() {
        return accVisualDisab;
    }
}

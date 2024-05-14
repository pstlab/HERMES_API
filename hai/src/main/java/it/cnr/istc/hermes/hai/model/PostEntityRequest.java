package it.cnr.istc.hermes.hai.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.mongodb.core.mapping.Document;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * 
 */
@Document("post_entity_request")
public class PostEntityRequest {

    @NotNull
    private String entityLabel;

    @NotNull
    private String text;

    @NotNull
    private String culturalPropertyType;

    @NotNull
    @NotEmpty
    private List<Topic> topics;

    private String resourceId;              // optional - if not null update the information of the associated resource
    private Date time;
    private float[] location;
    private int groupSize;
    private boolean[] dVector;
    private boolean[] mVector;

    /**
     * 
     */
    public PostEntityRequest() {
        this.topics = new ArrayList<>();
        this.time = new Date();

    }

    public Date getTime() {
        return time;
    }

    public String getEntityLabel() {
        return entityLabel;
    }

    public void setEntityLabel(String entityLabel) {
        this.entityLabel = entityLabel;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<Topic> getTopics() {
        return topics;
    }

    public void setTopics(List<Topic> topics) {
        this.topics = topics;
    }

    public float[] getLocation() {
        return location;
    }

    public void setLocation(float[] location) {
        this.location = location;
    }

    public int getGroupSize() {
        return groupSize;
    }

    public void setGroupSize(int groupSize) {
        this.groupSize = groupSize;
    }

    public boolean[] getdVector() {
        return dVector;
    }

    public void setdVector(boolean[] dVector) {
        this.dVector = dVector;
    }

    public boolean[] getmVector() {
        return mVector;
    }

    public void setmVector(boolean[] mVector) {
        this.mVector = mVector;
    }

    public String getCulturalPropertyType() {
        return culturalPropertyType;
    }

    public void setCulturalPropertyType(String culturalPropertyType) {
        this.culturalPropertyType = culturalPropertyType;
    }

    public String getResourceId() {
        return resourceId;
    }

    public void setResourceId(String resourceId) {
        this.resourceId = resourceId;
    }
    
        
    @Override
    public int hashCode() {
        return this.time.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return this.time.equals(((PostEntityRequest) obj).time);
    }
    
    public String toString() {
        return "[PostEntityRequest] {\"time\": \"" + this.time + "\"}";
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package orm;

import java.io.Serializable;

/**
 *
 * @author s3f4
 */
public class TagMap implements Serializable {

    private int tagMapId;
    private int tagId;
    private int id;
    private boolean type; /* 0 => Thread, 1 => Project */


    public int getTagMapId() {
        return tagMapId;
    }

    public void setTagMapId(int tagMapId) {
        this.tagMapId = tagMapId;
    }

    public int getTagId() {
        return tagId;
    }

    public void setTagId(int tagId) {
        this.tagId = tagId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isType() {
        return type;
    }

    public void setType(boolean type) {
        this.type = type;
    }

    public TagMap(int tagMapId, int tagId, int id, boolean type) {
        this.tagMapId = tagMapId;
        this.tagId = tagId;
        this.id = id;
        this.type = type;
    }
}
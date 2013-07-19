/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package orm;

import java.io.Serializable;

/**
 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 *
 * @author s3f4
 */
public class Project implements Serializable {

    private int userId;
    private int projectId;
    private String projectTitle;
    private String projectContent;
    private String projectDate;
    private String projectStartDate;
    private String projectFinishDate;
    private int[] tagId;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getProjectTitle() {
        return projectTitle;
    }

    public void setProjectTitle(String projectTitle) {
        this.projectTitle = projectTitle;
    }

    public String getProjectContent() {
        return projectContent;
    }

    public void setProjectContent(String projectContent) {
        this.projectContent = projectContent;
    }

    public String getProjectDate() {
        return projectDate;
    }

    public void setProjectDate(String projectDate) {
        this.projectDate = projectDate;
    }

    public String getProjectStartDate() {
        return projectStartDate;
    }

    public void setProjectStartDate(String projectStartDate) {
        this.projectStartDate = projectStartDate;
    }

    public String getProjectFinishDate() {
        return projectFinishDate;
    }

    public void setProjectFinishDate(String projectFinishDate) {
        this.projectFinishDate = projectFinishDate;
    }

    public int[] getTagId() {
        return tagId;
    }

    public void setTagId(int[] tagId) {
        this.tagId = tagId;
    }

    public Project(int userId, String projectTitle, String projectContent, String projectDate, String projectStartDate, String projectFinishDate, int[] tagId) {
        this.userId = userId;
        this.projectTitle = projectTitle;
        this.projectContent = projectContent;
        this.projectDate = projectDate;
        this.projectStartDate = projectStartDate;
        this.projectFinishDate = projectFinishDate;
        this.tagId = tagId;
    }
}

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
public class Thread implements Serializable {

    private int userId;
    private int threadId;
    private String threadTİtle;
    private String threadContent;
    private String threadDate;
    private int[] tagId;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getThreadId() {
        return threadId;
    }

    public void setThreadId(int threadId) {
        this.threadId = threadId;
    }

    public String getThreadTİtle() {
        return threadTİtle;
    }

    public void setThreadTİtle(String threadTİtle) {
        this.threadTİtle = threadTİtle;
    }

    public String getThreadContent() {
        return threadContent;
    }

    public void setThreadContent(String threadContent) {
        this.threadContent = threadContent;
    }

    public String getThreadDate() {
        return threadDate;
    }

    public void setThreadDate(String threadDate) {
        this.threadDate = threadDate;
    }

    public int[] getTagId() {
        return tagId;
    }

    public void setTagId(int[] tagId) {
        this.tagId = tagId;
    }

    public Thread(int userId, String threadTİtle, String threadContent, String threadDate, int[] tagId) {
        this.userId = userId;
        this.threadTİtle = threadTİtle;
        this.threadContent = threadContent;
        this.threadDate = threadDate;
        this.tagId = tagId;
    }

}

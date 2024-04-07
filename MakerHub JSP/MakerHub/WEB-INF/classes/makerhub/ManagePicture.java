package makerhub;
import java.sql.Date;
public class ManagePicture {
    private int picId;
    private String picUrl;
    private Date uploadDate;
    private String caption;
    private int spaceId;

    // Getters
    public int getPicId() {
        return picId;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public String getCaption() {
        return caption;
    }

    public int getSpaceId() {
        return spaceId;
    }

    // Setters
    public void setPicId(int picId) {
        this.picId = picId;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public void setSpaceId(int spaceId) {
        this.spaceId = spaceId;
    }
}
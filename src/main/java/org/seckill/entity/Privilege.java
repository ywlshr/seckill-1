package org.seckill.entity;

public class Privilege {
    private String userid;
    private boolean isCreateProject;
    private boolean isCreateBranch;
    private boolean isLockProjectBranch;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public boolean isCreateProject() {
        return isCreateProject;
    }

    public void setCreateProject(boolean createProject) {
        isCreateProject = createProject;
    }

    public boolean isCreateBranch() {
        return isCreateBranch;
    }

    public void setCreateBranch(boolean createBranch) {
        isCreateBranch = createBranch;
    }

    public boolean isLockProjectBranch() {
        return isLockProjectBranch;
    }

    public void setLockProjectBranch(boolean lockProjectBranch) {
        isLockProjectBranch = lockProjectBranch;
    }

    @Override
    public String toString() {
        return "privilege{" +
                "userid='" + userid + '\'' +
                ", isCreateProject=" + isCreateProject +
                ", isCreateBranch=" + isCreateBranch +
                ", isLockProjectBranch=" + isLockProjectBranch +
                '}';
    }
}

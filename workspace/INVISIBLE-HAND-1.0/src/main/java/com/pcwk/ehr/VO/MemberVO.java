package com.pcwk.ehr.VO;

public class MemberVO {
    private String memberId;
    private String password;
    private int memberGrade;
    private String memberName;
    private String email;
    private String nickname;
    private String joinDate;
    private String updateDate;
    private String isVerified;

    // Constructors, Getters, and Setters

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getMemberGrade() {
        return memberGrade;
    }

    public void setMemberGrade(int memberGrade) {
        this.memberGrade = memberGrade;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(String joinDate) {
        this.joinDate = joinDate;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getIsVerified() {
        return isVerified;
    }

    public void setIsVerified(String isVerified) {
        this.isVerified = isVerified;
    }
    
    @Override
    public String toString() {
        return "AdminVO{" +
                "memberId='" + memberId + '\'' +
                ", password='" + password + '\'' +
                ", memberGrade=" + memberGrade +
                ", memberName='" + memberName + '\'' +
                ", email='" + email + '\'' +
                ", nickname='" + nickname + '\'' +
                ", joinDate='" + joinDate + '\'' +
                ", updateDate='" + updateDate + '\'' +
                ", isVerified='" + isVerified + '\'' +
                '}';
    }
    
}

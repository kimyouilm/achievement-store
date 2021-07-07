package com.lima.web.member.domain;

import java.util.Objects;

public class Member {

    private int memberNo;
    private String id;
    private String name;
    private String email;
    private String password;
    private String profileImg;
    // 웹싸이트에서 사용하는 돈 (원)
    private int ham;

    private Deposit deposit;
    private Withdraw withdraw;

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfileImg() {
        return profileImg;
    }

    public void setProfileImg(String profileImg) {
        this.profileImg = profileImg;
    }

    public int getHam() {
        return ham;
    }

    public void setHam(int ham) {
        this.ham = ham;
    }

    public Deposit getDeposit() {
        return deposit;
    }

    public void setDeposit(Deposit deposit) {
        this.deposit = deposit;
    }

    public Withdraw getWithdraw() {
        return withdraw;
    }

    public void setWithdraw(Withdraw withdraw) {
        this.withdraw = withdraw;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Member member = (Member) o;
        return memberNo == member.memberNo &&
                ham == member.ham &&
                Objects.equals(id, member.id) &&
                Objects.equals(name, member.name) &&
                Objects.equals(email, member.email) &&
                Objects.equals(password, member.password) &&
                Objects.equals(profileImg, member.profileImg) &&
                Objects.equals(deposit, member.deposit) &&
                Objects.equals(withdraw, member.withdraw);
    }

    @Override
    public int hashCode() {
        return Objects.hash(memberNo, id, name, email, password, profileImg, ham, deposit, withdraw);
    }

    @Override
    public String toString() {
        return "Member{" +
                "memberNo=" + memberNo +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", profileImg='" + profileImg + '\'' +
                ", ham=" + ham +
                ", deposit=" + deposit +
                ", withdraw=" + withdraw +
                '}';
    }
}

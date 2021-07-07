package com.lima.web.board.domain;

import com.lima.web.member.domain.Member;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;
import java.util.Objects;

public class Board {

    private int boardNo;
    private int memberNo;
    private String title;
    private String contents;
    private String goal;
    private String goalHam;
    private String goalDate;
    private String goalImg;
    private Member member;
    private int isSuccess;
    private Date regiDate;

    public int getBoardNo() {
        return boardNo;
    }

    public void setBoardNo(int boardNo) {
        this.boardNo = boardNo;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getGoal() {
        return goal;
    }

    public void setGoal(String goal) {
        this.goal = goal;
    }

    public String getGoalHam() {
        return goalHam;
    }

    public void setGoalHam(String goalHam) {
        this.goalHam = goalHam;
    }

    public String getGoalImg() {
        return goalImg;
    }

    public void setGoalImg(String goalImg) {
        this.goalImg = goalImg;
    }

    public String getGoalDate() {
        return goalDate;
    }

    public void setGoalDate(String goalDate) {
        this.goalDate = goalDate;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public int getIsSuccess() {
        return isSuccess;
    }

    public void setIsSuccess(int isSuccess) {
        this.isSuccess = isSuccess;
    }

    public Date getRegiDate() {
        return regiDate;
    }

    public void setRegiDate(Date regiDate) {
        this.regiDate = regiDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Board board = (Board) o;
        return boardNo == board.boardNo &&
                memberNo == board.memberNo &&
                isSuccess == board.isSuccess &&
                Objects.equals(title, board.title) &&
                Objects.equals(contents, board.contents) &&
                Objects.equals(goal, board.goal) &&
                Objects.equals(goalHam, board.goalHam) &&
                Objects.equals(goalDate, board.goalDate) &&
                Objects.equals(goalImg, board.goalImg) &&
                Objects.equals(member, board.member) &&
                Objects.equals(regiDate, board.regiDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(boardNo, memberNo, title, contents, goal, goalHam, goalDate, goalImg, member, isSuccess, regiDate);
    }

    @Override
    public String toString() {
        return "Board{" +
                "boardNo=" + boardNo +
                ", memberNo=" + memberNo +
                ", title='" + title + '\'' +
                ", contents='" + contents + '\'' +
                ", goal='" + goal + '\'' +
                ", goalHam='" + goalHam + '\'' +
                ", goalDate=" + goalDate +
                ", goalImg='" + goalImg + '\'' +
                ", member=" + member +
                ", isSuccess=" + isSuccess +
                ", regiDate=" + regiDate +
                '}';
    }
}

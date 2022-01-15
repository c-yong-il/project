package com.cgv.vo;

public class MemberVO {
    String id, pass, name, datepicker, gender, email1, email2, addr1, addr2, tel, hp1, hp2, hp3, intro, hobbylist,
            mdate;
    String[] hobby;

    public String getDatepicker() {
        return datepicker;
    }

    public void setDatepicker(String datepicker) {
        this.datepicker = datepicker;
    }

    public String getHobbylist() {
        return hobbylist;
    }

    public void setHobbylist(String hobbylist) {
        this.hobbylist = hobbylist;
    }

    public String getMdate() {
        return mdate;
    }

    public void setMdate(String mdate) {
        this.mdate = mdate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail1() {
        return email1;
    }

    public void setEmail1(String email1) {
        this.email1 = email1;
    }

    public String getEmail2() {
        return email2;
    }

    public void setEmail2(String email2) {
        this.email2 = email2;
    }

    public String getAddr1() {
        return addr1;
    }

    public void setAddr1(String addr1) {
        this.addr1 = addr1;
    }

    public String getAddr2() {
        return addr2;
    }

    public void setAddr2(String addr2) {
        this.addr2 = addr2;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getHp1() {
        return hp1;
    }

    public void setHp1(String hp1) {
        this.hp1 = hp1;
    }

    public String getHp2() {
        return hp2;
    }

    public void setHp2(String hp2) {
        this.hp2 = hp2;
    }

    public String getHp3() {
        return hp3;
    }

    public void setHp3(String hp3) {
        this.hp3 = hp3;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String[] getHobby() {
        return hobby;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;

        if (hobby != null) {
            setHobbylist(String.join(",", hobby));
        }
    }

    /**
     * �̸��� ��� �޼ҵ�
     */
    public String getEmail() {
        return email1 + "@" + email2;
    }

    /**
     * �ּ� ��� �޼ҵ�
     */
    public String getAddress() {
        return addr1 + addr2;
    }

    /**
     * ����ȣ ��� �޼ҵ�
     */
    public String getHp() {
        return hp1 + "-" + hp2 + "-" + hp3;
    }

}

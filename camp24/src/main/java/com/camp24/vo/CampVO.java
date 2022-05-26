package com.camp24.vo;

public class CampVO {

		private int cno, lat, clong;
		private String cname, ctype, cdo, sigun, ctel, home;
		public int getCno() {
			return cno;
		}
		public void setCno(int cno) {
			this.cno = cno;
		}
		public int getLat() {
			return lat;
		}
		public void setLat(int lat) {
			this.lat = lat;
		}
		public int getClong() {
			return clong;
		}
		public void setClong(int clong) {
			this.clong = clong;
		}
		public String getCname() {
			return cname;
		}
		public void setCname(String cname) {
			this.cname = cname;
		}
		public String getCtype() {
			return ctype;
		}
		public void setCtype(String ctype) {
			this.ctype = ctype;
		}
		public String getCdo() {
			return cdo;
		}
		public void setCdo(String cdo) {
			this.cdo = cdo;
		}
		public String getSigun() {
			return sigun;
		}
		public void setSigun(String sigun) {
			this.sigun = sigun;
		}
		public String getCtel() {
			return ctel;
		}
		public void setCtel(String ctel) {
			this.ctel = ctel;
		}
		public String getHome() {
			return home;
		}
		public void setHome(String home) {
			this.home = home;
		}
		@Override
		public String toString() {
			return "CampVO [cno=" + cno + ", lat=" + lat + ", clong=" + clong + ", cname=" + cname + ", ctype=" + ctype
					+ ", cdo=" + cdo + ", sigun=" + sigun + ", ctel=" + ctel + ", home=" + home + "]";
		}
		
		
}
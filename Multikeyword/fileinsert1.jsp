<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*" %>

<%@ page import="java.util.zip.*"%>
<%@ page import="java.util.Random"%>
<%
String owner=(String)session.getAttribute("owner");
int c=0;
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
String sss1 = "select count(*) from meta_data";

ResultSet rs=st1.executeQuery(sss1);
if(rs.next())
{
		c=rs.getInt(1);

		session.setAttribute("c",c);
}

		Random randomGenerator = new Random();
		int m = randomGenerator.nextInt(1000);
		int m1 = randomGenerator.nextInt(1000);
		int ino=m+m1;
session.setAttribute("mid",ino);
		System.out.println("ino==="+ino);


String saveFile="";
String contentType = request.getContentType();

if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%><Br><table border="2"><tr><td><b>You have successfully upload the file:</b>
<%out.println(saveFile);%></td></tr></table>
<%
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/";
ResultSet rs2 = null;
PreparedStatement psmnt = null;
PreparedStatement psmnt1 = null;
FileInputStream fis;
try{

connection=databasecon.getconnection();
File f = new File(saveFile);
System.out.println(f);
session.setAttribute("file",f.toString());

psmnt1 = connection.prepareStatement("insert into meta_data(sno,owner,index_id) values(?,?,?)");
fis = new FileInputStream(f);
psmnt1.setInt(1,c);
psmnt1.setString(2,owner);
psmnt1.setInt(3,ino);
int s1 = psmnt1.executeUpdate();
if(s1>0)
	{
psmnt = connection.prepareStatement("insert into data(index_id,file_name,file) values(?,AES_ENCRYPT(?, 'key'),AES_ENCRYPT(?, 'key'))");
psmnt.setInt(1,ino);
psmnt.setString(2,f.toString());
psmnt.setBinaryStream(3, (InputStream)fis, (int)(f.length()));

int s = psmnt.executeUpdate();
if(s>0)
{
response.sendRedirect("upload2.jsp");
}
else{
System.out.println("Error!");
}
	}

}
catch(Exception e){e.printStackTrace();
}
}
%>

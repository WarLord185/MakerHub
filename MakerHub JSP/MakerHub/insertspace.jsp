<html>
  <head>
    <link rel="stylesheet" href="dashboard.css">
  </head>
  
  <%@ page import=" makerhub.*, java.util.ArrayList" %> 
  <%
  Spaces m = new Spaces();
    ArrayList<Category> cs = m.getCategories();         
  %>

  <body>
    <h1 id="heading1"> Add a New Space</h1>
    

    <h2 class="heading2"> Add New Space </h2>
    <form  action="confirmInsert.jsp" method="post">
    <table border="0" width="70%" align="center" cellpadding="10">
      <tr>
          <td class="col1"> Space Name:  </td>
          <td> <input type="text"  name="sname" required />  </td>
      </tr>

      <tr>
        <td class="col1"> Address:</td>
        <td><input type="text" name="add" required></td>
        </tr>

        <tr>
          <td class="col1"> Description:</td>
          <td><input type="text" name="desc" required></td>
          </tr>
      <tr>
          <td class="col1"> Type:  </td>
          <td>
            <select name="ct" required >
              <%
                for(int i=0; i<cs.size(); i++ ){   
                  Category c = cs.get(i);            
              %>
             
                <option value="<%= c.id %>" > <%= c.name %> </option>
              <%
                 } 
              %>
            </select>

          </td>
      </tr>

      <tr>
          <td class="col1"> Price:  </td>
          <td> <input type="text"  name="price" required />  </td>
      </tr>

      <tr>
        <td class="col1"> Owner's ID:  </td>
        <td> <input type="text"  name="oi" required />  </td>
    </tr>


          <td>   </td>
          <td> <input type="submit" value="Submit Data" /> <input type="reset" value="Reset" />   </td>
      </tr>
    </table>
   </form>

  <br> <br>
</body>
</html>

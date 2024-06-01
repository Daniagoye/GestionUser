<%@page import="beans.Utilisateur"%>
<%@page import="java.util.ArrayList"%>

<%@include file="include/header.jsp"  %>
	
	<section>
		
		<% 
			ArrayList<Utilisateur>  users =(ArrayList<Utilisateur>) request.getAttribute("utilisateurs") ;
		
			if(users.isEmpty())
			{
				out.print("Desole, la liste est vide !");
			}
			
			else
			{ %>
			<h1>***** La liste des utilisateurs enregistrer *****</h1>
				<table border="1" cellspacing="0" cellpadding="10" class="contenu">
					<tr id="entetTable">
						<th>ID</th>
						<th>NOM</th>
						<th>PRENOM</th>
						<th>LOGIN</th>
						<th>PASSWORD</th>
						<th colspan="2">ACTION </th>
						
					</tr>
				<%
				for(Utilisateur user : users)
				{%>
				
				<tr>
					<td><%= user.getId()  %></td>
					<td><%= user.getNom()  %></td>
					<td><%= user.getPrenom()  %></td>
					<td><%= user.getLogin()  %></td>
					<td><%= user.getPassword()  %></td>
					<td> <a href="update?id=<%= user.getId() %>" class="btn-modif">Modifier</a></td>
					<td> <a href="delete?id=<%= user.getId() %>" onclick="return confirm('En êtes vous sûr ?')" class="btn-sup">Supprimer</a></td>
				</tr>
	
				<% } %>
				</table>
			<%}
		%>
	</section>
	
<%@include file="include/footer.jsp"  %>
</body>
</html>
<% final String APP_ROOT = request.getContextPath(); %>

<%@ page language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Gestion des Utilisateurs</title>
	<link rel="stylesheet" type="text/css" href="./css/style.css">


</head>
<body>
	<header>GESTION DES UTILISATEURS</header>
	
	<div class="nav">
		<a href="/GestionUser/" class="navi">Accueil</a>
		<a href="/GestionUser/list" class="navi">Lister</a>
		<a href="/GestionUser/ajout" class="navi">Ajouter</a>
		<a href="/GestionUser/logout" class="navi">Déconnexion</a>
	</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- index.html -->
<!DOCTYPE html> 
<html lang="en"> 

<head> 
	<meta charset="UTF-8" /> 
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0" /> 
	<link rel="stylesheet" href="password_generator.css" /> 
	<title>Password Generator</title> 
</head> 

<body> 
	<h1>Password Generator</h1> 
	<div class="generator"> 
		<div class="password"> 
			<input type="text" value="test" /> 
			<button>copy</button> 
		</div> 
		<div class="range"> 
			<input type="range" min="12"
				max="24" value="12" /> 
			<span>12</span> 
		</div> 
		<div class="options"> 
			<div class="option"> 
				<label> 
					<input type="checkbox"
						id="lowercaseCb" checked /> 
					<span>a-z</span> 
				</label> 
			</div> 
			<div class="option"> 
				<label> 
					<input type="checkbox"
						id="uppercaseCb" checked /> 
					<span>A-Z</span> 
				</label> 
			</div> 
			<div class="option"> 
				<label> 
					<input type="checkbox"
						id="digitsCb" checked /> 
					<span>0-9</span> 
				</label> 
			</div> 
			<div class="option"> 
				<label> 
					<input type="checkbox"
						id="specialsCb" checked /> 
					<span>!@$#%^</span> 
				</label> 
			</div> 
		</div> 
		<button class="generate"> 
			generate 
		</button> 
	</div> 
	<script src="password_generator.js"></script> 
</body> 

</html>

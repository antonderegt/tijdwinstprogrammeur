<script>
	let bgImage = 'bg.svg';
</script>

<style>

	div {
		position: fixed;
		top:57px;
		left:0;
		width: 100%;
		height: 100%;
		background-size: cover;
	}

	.main {
		position: relative;
		max-width: 56em;
		/* background-color: white; */
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	} 

	p {
		color: purple;
		font-family: 'Comic Sans MS', cursive;
		font-size: 2em;
		background-color: white;
	}

	h1 {
		background-color: white;
	}
	
</style>


<svelte:head>
	<title>Over</title>
</svelte:head>

<div style="background-image: url('{bgImage}')">
	<div class="main">
		<h1>Over de Tijdwinst Programmeur</h1>
		<p>This is the 'about' page. There's not much here.</p>
	</div>
</div>
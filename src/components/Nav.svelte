<script>
	export let segment;
</script>

<style>
	nav {
		border-bottom: 1px solid rgba(255,62,0,0.1);
		font-weight: 300;
		padding: 0 1em;
	}

	ul {
		margin: 0;
		padding: 0;
		/* float: right; */
	}

	/* clearfix */
	ul::after {
		content: '';
		display: block;
		clear: both;
	}

	li {
		display: block;
		float: right;
	}

	.selected {
		position: relative;
		display: inline-block;
	}

	.selected::after {
		position: absolute;
		content: '';
		width: calc(100% - 1em);
		height: 2px;
		background-color: rgb(255,62,0);
		display: block;
		bottom: -1px;
	}

	a {
		text-decoration: none;
		padding: 1em 0.5em;
		display: block;
	}

	.logo {
		float: left;
	}

</style>

<nav>
	<ul>
		<li class="logo"><a href='.'><strong>De Tijdwinst Programmeur</strong></a></li>
		
		<!-- for the blog link, we're using rel=prefetch so that Sapper prefetches
		     the blog data when we hover over the link or tap it on a touchscreen -->
		<li><a rel=prefetch class:selected='{segment === "blog"}' href='blog'>blog</a></li>
		
		<li><a class:selected='{segment === "diensten"}' href='diensten'>diensten</a></li>
		<li><a class:selected='{segment === "over"}' href='over'>over</a></li>
		<li><a class:selected='{segment === undefined}' href='.'>start</a></li>
	</ul>
</nav>

#!./node_modules/.bin/lsc

require! {
	path
	express
	jade
}

host = \localhost
port = 8412

app = express!

# static
<[ images styles scripts fonts ]>
	|> (.map (x) -> app.use "/#x", express.static path.join process.cwd!, x)

app.set \views, path.join process.cwd!
app.set 'view engine', \jade

app.use \/, (req, res) ->
	res.render \index

app.listen port, host, !->
	console.log "Listening on http://#host:#port"

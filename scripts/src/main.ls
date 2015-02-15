/**
 * @author Viacheslav Lotsmanov
 */

require! {
	jquery: $
	'./variables.json': vars
}

<-! $ # dom ready

$w = $ window
$html = $ \html
$page = $ 'html, body'

$footer = $ \footer
$up-button = $footer.find \.up

$up-button.click ->
	$page.stop!.animate scroll-top: 0, (vars.animation.speed |> (* 4))
	false

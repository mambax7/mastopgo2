<style type="text/css">
div#dstacs_<{$block.mgo_blo_section}>.jdGallery .slideInfoZone
	{
		position: absolute;
		z-index: 17;
		width: 100%;
		margin: 0px;
		left: 0;
		bottom: 0;
		height: 30px;
		background: #<{$block.mgo_blo_bgcolor}>;
		color: #<{$block.mgo_blo_txtcolor}>;
		text-indent: 0;
		overflow: hidden;
	}
	div#dstacs_<{$block.mgo_blo_section}>.jdGallery .slideInfoZone div a
	{
		padding: 0;
		margin: 0;
		font-family: Tahoma, Arial, Helvetica, sans-serif;
		font-size: 14px;
		font-weight: normal !important;
		color:#<{$block.mgo_blo_txtcolor}> !important;
		text-decoration:none;
	}
</style>

<script src="<{xoAppUrl}>modules/mastop_go2/assets/js/galeria/scripts/mootools.js" type="text/javascript"></script>
<script src="<{xoAppUrl}>modules/mastop_go2/assets/js/galeria/scripts/jd.js" type="text/javascript"></script>
<link rel="stylesheet" href="<{xoAppUrl}>/modules/mastop_go2/assets/js/galeria/css/jd.css" type="text/css" media="screen" />

<style type="text/css">
	#dstacs_<{$block.mgo_blo_section}>{
		width: 100% !important;
		height: <{$block.height}>px !important;
		z-index:5;
		display: none;
		border: 0px;
	}
</style>
<script type="text/javascript">
	function start_dstacs_<{$block.mgo_blo_section}>() {
	var dstacs_<{$block.mgo_blo_section}> = new gallery($("dstacs_<{$block.mgo_blo_section}>"), {
		timed: <{if $block.work|@count > 1}> true <{else}> false <{/if}>,
		showArrows: <{if $block.arrows == 1}> true <{else}> false <{/if}>,
		showInfopane: <{if $block.txtbar == 1}> true <{else}> false <{/if}>,
		delay: <{$block.delay}>*1000,
		slideInfoZoneOpacity:<{if $block.opacity > 0}> 0.<{$block.opacity}><{else}> 1 <{/if}>,
		embedLinks: true,
		randomize: true
	});
	}
	window.onDomReady(start_dstacs_<{$block.mgo_blo_section}>);
</script>
<div align="center">
	<div id="dstacs_<{$block.mgo_blo_section}>">
	<{foreach item=image from=$block.work}>
		<div class="imageElement">
			<{if $image.url_title != ""}>
			<h3>
				<a href="<{$image.url}>" title="<{$image.url_title}>" target="<{$image.targer}>" class="open">
					<{$image.url_title}>
				</a>
			</h3>
			<{else}>
			<h3>&nbsp;</h3>
			<{/if}>
			<p></p>
			<{$image.img}>
		</div>
	<{/foreach}>
	</div>
</div>

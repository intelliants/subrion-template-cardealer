{if 'index' == $core.page.name}
	<div class="teaser">
		<div class="row">
			<div class="col-md-6">
				<div class="teaser__headline">
					<h1>{lang key='teaser_title'}</h1>
					<h2>{lang key='teaser_tagline'}</h2>
				</div>
			</div>
			<div class="col-md-6">
				<div class="sec sec-search{if 'index' != $core.page.name} sec-search--inner{/if}">
					<form class="q-search{if 'index' != $core.page.name} q-search--inner{/if}" action="{$smarty.const.IA_URL}search/cars/">
						<div class="q-search__inputs">
							<div class="row">
								<div class="col-md-6">
									<select class="form-control js-car-make" name="mk">
										<option value="">{lang key='make'}</option>
										{foreach $car_blocks_data.search.categories as $item}
											<option value="{$item.id}"{if isset($smarty.get.mk) && $smarty.get.mk == $item.id} selected{/if}>{$item.name|escape:'html'}</option>
										{/foreach}
									</select>
								</div>
								<div class="col-md-6">
									<div class="q-search__inputs__model">
										<div class="q-search__loader"><div class="loader"></div></div>
										<select name="md" class="form-control js-car-model" data-spinner=".q-search__loader">
											<option value="">{lang key='model'}</option>
										</select>
									</div>
								</div>
							</div>

							<div class="row q-search__inputs__price">
								<label for="">{lang key='price'}:</label>
								<input type="text" id="qs-car-price" class="form-control" name="qs-car-price"
									data-type="double"
									data-force-edges="true"
									data-postfix=" {$core.config.currency}"
									data-min="0"
									data-max="{if $max_auto_price}{$max_auto_price}{else}350000{/if}"
									data-from="{if isset($smarty.get.price[f])}{$smarty.get.price[f]}{else}5000{/if}"
									data-to="{if isset($smarty.get.price[t])}{$smarty.get.price[t]}{elseif $max_auto_price}{$max_auto_price}{else}40000{/if}"
									data-step="1000">

								<input type="hidden" id="price_from" name="price[f]" value="{if isset($smarty.get.price[f])}{$smarty.get.price[f]}{else}0{/if}">
								<input type="hidden" id="price_to" name="price[t]" value="{if isset($smarty.get.price[t])}{$smarty.get.price[t]}{elseif $max_auto_price}{$max_auto_price}{else}150000{/if}">
							</div>

							{* <div class="row">
								<div class="col-md-6">
									<input class="form-control" type="text" name="price[f]" placeholder="Price min" value="{if isset($smarty.get.price[f])}{$smarty.get.price[f]}{else}{/if}">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" name="price[t]" placeholder="Price max" value="{if isset($smarty.get.price[t])}{$smarty.get.price[t]}{else}{/if}">
								</div>
							</div> *}



							<div class="row">
								<div class="col-md-6">
									<select class="form-control" name="body">
										<option value="">{lang key='field_autos_body_type'}</option>
										{foreach $car_blocks_data.search.body_types as $key => $value}
											<option value="{$key}"{if isset($smarty.get.body) && $smarty.get.body == $key} selected{/if}>{$value}</option>
										{/foreach}
									</select>
								</div>
								<div class="col-md-6">
									<button class="btn btn-primary btn-block" type="submit">
										<span class="fa fa-search"></span> {lang key='search'}
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
{else}
	<div class="sec sec-search{if 'index' != $core.page.name} sec-search--inner{/if}">
		<form class="q-search{if 'index' != $core.page.name} q-search--inner{/if}" action="{$smarty.const.IA_URL}search/cars/">
			<div class="container q-search__inputs">
				<div class="row">
					<div class="col-md-2">
						<select class="form-control js-car-make" name="mk">
							<option value="">{lang key='make'}</option>
							{foreach $car_blocks_data.search.categories as $item}
								<option value="{$item.id}"{if isset($smarty.get.mk) && $smarty.get.mk == $item.id} selected{/if}>{$item.name|escape:'html'}</option>
							{/foreach}
						</select>
					</div>
					<div class="col-md-2">
						<div class="q-search__loader"><div class="loader"></div></div>
						<select name="md" class="form-control js-car-model" data-spinner=".q-search__loader">
							<option value="">{lang key='model'}</option>
						</select>
					</div>
					<div class="col-md-2">
						<select class="form-control" name="body">
							<option value="">{lang key='field_autos_body_type'}</option>
							{foreach $car_blocks_data.search.body_types as $key => $value}
								<option value="{$key}"{if isset($smarty.get.body) && $smarty.get.body == $key} selected{/if}>{$value}</option>
							{/foreach}
						</select>
					</div>
					<div class="col-md-2">
						<input class="form-control" type="text" name="price[f]" placeholder="Price min" value="{if isset($smarty.get.price[f])}{$smarty.get.price[f]}{else}{/if}">
					</div>
					<div class="col-md-2">
						<input class="form-control" type="text" name="price[t]" placeholder="Price max" value="{if isset($smarty.get.price[t])}{$smarty.get.price[t]}{else}{/if}">
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary btn-block" type="submit">
							<span class="fa fa-search"></span> {lang key='search'}
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
{/if}
	{ia_add_media files='js:_IA_TPL_ion.rangeSlider.min'}
	{ia_print_js files='_IA_URL_modules/autos/js/front/search'}

{if 'index' == $core.page.name}
	<div class="teaser">
		<div class="row">
			<div class="col-md-6">
				<div class="teaser__headline">
					<h1>Need a car?<br>We have a plenty of variants!</h1>
					<h2>buy a new or used car</h2>
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

							<div class="row">
								<div class="col-md-6">
									<input class="form-control" type="text" name="price[f]" placeholder="Price min" value="{if isset($smarty.get.price[f])}{$smarty.get.price[f]}{else}{/if}">
								</div>
								<div class="col-md-6">
									<input class="form-control" type="text" name="price[t]" placeholder="Price max" value="{if isset($smarty.get.price[t])}{$smarty.get.price[t]}{else}{/if}">
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<select class="form-control" name="body">
										<option value="">{lang key='field_body_type'}</option>
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
							<option value="">{lang key='field_body_type'}</option>
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

	{ia_print_js files='_IA_URL_packages/autos/js/front/search'}

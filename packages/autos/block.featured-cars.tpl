{if isset($car_blocks_data.featured)}
	<div class="ia-items featured-cars">
		<div class="row">
			{foreach $car_blocks_data.featured as $item}
				<div class="col-md-3">
					<div class="ia-card -{$item.status} {if 'hidden' == $item.status}-hidden{/if}">

						{if $item.auto_pictures}
							<a class="ia-card__image" href="{$item.link}">
								{ia_image type='thumbnail' file=$item.auto_pictures[0] title=$item.model}

								<span class="ia-card__badge">{lang key="field_autos_condition+{$item.condition}"}</span>

								<span class="ia-card__support-info">
									<span class="pull-left"><span class="fa fa-image"></span> {$item.auto_pictures_num}</span>
									<span class="pull-right">{$item.date_added|date_format:$core.config.date_format}</span>
								</span>
							</a>
						{/if}

						<div class="ia-card__content">
							<div class="ia-card__actions dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-ellipsis-h"></span></a>
								<ul class="dropdown-menu pull-right no-drop">
									<li>{printFavorites item=$item itemtype='autos' guests=true}</li>
									<li><a href="{$item.link}"><span class="fa fa-automobile"></span> {lang key='car_details'}</a></li>
									<li>{accountActions item=$item itemtype='autos'}</li>
								</ul>
							</div>
							<a class="ia-card__title" href="{$item.link}">{$item.model}, {$item.release_year}</a>
							<p class="ia-card__sub-title">{$item.price}</p>
							{if $item.mileage}
								<p class="ia-card__text">
									<span class="fa fa-tachometer"></span> <b>{$item.mileage}</b>
								</p>
							{/if}
							<p class="ia-card__text">
								{if $item.engine}
									{lang key="field_autos_engine+{$item.engine}"}{if $item.engine_type} {lang key="field_autos_engine_type+{$item.engine_type}"}{/if}{if $item.engine_size} {$item.engine_size}{/if},
								{/if}
								{if $item.transmission}
									{lang key="field_autos_transmission+{$item.transmission}"},
								{/if}
								{lang key="field_autos_exterior_color+{$item.exterior_color}"}
							</p>
						</div>
					</div>
				</div>

				{if $item@iteration % 4 == 0 && !$item@last}
					</div>
					<div class="row">
				{/if}
			{/foreach}
		</div>
	</div>
{/if}
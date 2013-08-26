{if $block == 1}
	<!-- Block CMS module -->
	{foreach from=$cms_titles key=cms_key item=cms_title}
		<section class="block blockcms column_box">
			<h4><span>{if !empty($cms_title.name)}{$cms_title.name}{else}{$cms_title.category_name}{/if}</span><i class="column_icon_toggle icon-plus-sign"></i></h4>
            <ul class="store_list toggle_content clearfix">
				{foreach from=$cms_title.categories item=cms_page}
					{if isset($cms_page.link)}<li ><b >
					<a href="{$cms_page.link}" title="{$cms_page.name|escape:html:'UTF-8'}">{$cms_page.name|escape:html:'UTF-8'}</a>
					</b></li>{/if}
				{/foreach}
				{foreach from=$cms_title.cms item=cms_page}
					{if isset($cms_page.link)}<li><a href="{$cms_page.link}" title="{$cms_page.meta_title|escape:html:'UTF-8'}"><i class="icon-ok"></i>{$cms_page.meta_title|escape:html:'UTF-8'}</a></li>{/if}
				{/foreach}
				{if $cms_title.display_store}<li><a href="{$link->getPageLink('stores')}" title="{l s='Our stores' mod='blockcms'}"><i class="icon-ok"></i>{l s='Our stores' mod='blockcms'}</a></li>{/if}
			</ul>
	</section>
	{/foreach}
	<!-- /Block CMS module -->
{else}
    <!-- MODULE Block footer -->
<section class="block blockcms_footer span3">
        <h4 class="toggle">{l s='Information' mod='blockcms'}<i class="icon-plus-sign"></i></h4>
		<ul class="list-footer toggle_content clearfix">
			{if !$PS_CATALOG_MODE}<!--li class="first_item"><a href="{$link->getPageLink('prices-drop')}" title="{l s='Specials' mod='blockcms'}"><i class="icon-circle-arrow-right"></i>{l s='Specials' mod='blockcms'}</a></li-->{/if}
			{if !$PS_CATALOG_MODE}<!--li class="item"><a href="{$link->getPageLink('best-sales')}" title="{l s='Top sellers' mod='blockcms'}"><i class="icon-circle-arrow-right"></i>{l s='Top sellers' mod='blockcms'}</a></li-->{/if}
			<!--li class="item"><a href="{$link->getPageLink($contact_url, true)}" title="{l s='Contact us' mod='blockcms'}"><i class="icon-circle-arrow-right"></i>{l s='Contact us' mod='blockcms'}</a></li-->
			{foreach from=$cmslinks item=cmslink}
				{if $cmslink.meta_title != ''}
					<li class="item"><a href="{$cmslink.link|addslashes}" title="{$cmslink.meta_title|escape:'htmlall':'UTF-8'}"><i class="icon-circle-arrow-right"></i>{$cmslink.meta_title|escape:'htmlall':'UTF-8'}</a></li>
				{/if}
			{/foreach}
			<!--li><a href="{$link->getPageLink('sitemap')}" title="{l s='sitemap' mod='blockcms'}"><i class="icon-circle-arrow-right"></i>{l s='Sitemap' mod='blockcms'}</a></li-->
{*
			<!--li class="{if $PS_CATALOG_MODE}first_{/if}item"><a href="{$link->getPageLink('new-products')}" title="{l s='New products' mod='blockcms'}">{l s='New products' mod='blockcms'}</a></li-->
			{if $display_stores_footer}<!--li class="item"><a href="{$link->getPageLink('stores')}" title="{l s='Our stores' mod='blockcms'}">{l s='Our stores' mod='blockcms'}</a></li-->{/if}
*}
		</ul>
	{$footer_text}
</section>
{if $display_poweredby}<section class="bottom_footer">&copy; {$smarty.now|date_format:"%Y"} {l s='Powered by' mod='blockcms'} <a target="_blank" href="http://www.prestashop.com">PrestaShop</a>&trade;</section>{/if}
	<!-- /MODULE Block footer -->
{/if}
{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if $status == 'ok'}
<p>{l s='Your order on %s is complete.' sprintf=$shop_name mod='bankwire'}
		<br /><br />
		
Puede realizar el pago en los siguientes n&uacute;meros de cuenta<br /><br />
<table width="600" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="280"><img src="{$img_dir}banco-mercantil.jpg" width="240" height="110" border="0" /></td>
    <td>BANCO MERCANTIL <br />
N&deg; 0105-0637-910637-02461-3<br />
Cuenta de Ahorro<br />
Rosa Mariana Cardona.<br />
C.I. 15.165.207<br /></td>
  </tr>
</table>

<br /><br />
<table width="600" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="280"><img src="{$img_dir}banesco.jpg" width="240" height="110" border="0" /></td>
    <td>BANCO BANESCO <br />
N&deg; 0134-0129-26-1293021968<br />
Cuenta Corriente<br />
Rosa Mariana Cardona.<br />
C.I.15.165.207</td>
  </tr>
</table>

<br /><br />


		{if !isset($reference)}
			<br /><br />- {l s='Do not forget to insert your order number #%d in the subject of your bank wire' sprintf=$id_order mod='bankwire'}
		{else}
			<br /><br />- {l s='Do not forget to insert your order reference %s in the subject of your bank wire.' sprintf=$reference mod='bankwire'}
		{/if}	
			<br /><br />{l s='An email has been sent with this information.' mod='bankwire'}
		<br /><br /> <strong>{l s='Your order will be sent as soon as we receive payment.' mod='bankwire'}</strong>
		<br /><br />{l s='If you have questions, comments or concerns, please contact our' mod='bankwire'} <a href="{$link->getPageLink('contact', true)}">{l s='expert customer support team. ' mod='bankwire'}</a>.
	</p>
{else}
	<p class="warning">
		{l s='We noticed a problem with your order. If you think this is an error, feel free to contact our' mod='bankwire'} 
		<a href="{$link->getPageLink('contact', true)}">{l s='expert customer support team. ' mod='bankwire'}</a>.
	</p>
{/if}

<ul>
<#list features as feature>
        <li><b><u>Attribute info</u></b><br><p>
	
        <ul>
        <#list feature.attributes as attribute>
	
                <#if !attribute.isGeometry && attribute.name != "osm_id" && attribute.name != "type"> 
                        
			<#if attribute.name = "name">
			<li>Name:&nbsp;&nbsp; ${attribute.value}</li>
			</#if>
			
			<#if attribute.name = "classify">
			<li>Category:&nbsp;&nbsp; ${attribute.value}</li>
			</#if>	
			
			<#if attribute.name = "link">
			<li>Link:&nbsp;&nbsp;<a href="${attribute.value}">${attribute.value}</a> </li>
			<br />
			</#if>	
			
			
                		
               
                </#if>	
		
        </#list>
        </ul>
        </li>
</#list>

</ul>
/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Contact.as).
 */

package org.granite.test.tide.framework {
	import mx.collections.ArrayCollection;
	
	import org.granite.test.tide.Contact;
	

	[Name("myComponentInject")]
	[Bindable]
    public class MyComponentInject {
    	
    	[In]
    	public var myComponent:MyComponent;
    	
    	[In]
    	public var myComponentNoCreate:MyComponentNoCreate;
    	
    	[In]
    	public var myComponentAutoCreate:MyComponentAutoCreate;
    	
    	[In]
    	public var injectedCollection:ArrayCollection;
    	
    	[In(create="true")]
    	public var injectedCollectionCreate:ArrayCollection;
    	
    	[In("injectedCollectionCreate", create="true")]
    	public var injectedCollectionAlias:ArrayCollection;
    	
    	[In]
    	public var injectedEntity:Contact;
    	
    	[In(create="true")]
    	public var injectedEntityCreate:Contact;
    	
    	public var constructed:Boolean = false;
    	
    	[PostConstruct]
    	public function postConstruct():void {
    		if (injectedEntityCreate != null)
    			constructed = true;
    	}
    }
}
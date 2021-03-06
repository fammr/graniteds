/*
 *   GRANITE DATA SERVICES
 *   Copyright (C) 2006-2015 GRANITE DATA SERVICES S.A.S.
 *
 *   This file is part of the Granite Data Services Platform.
 *
 *   Granite Data Services is free software; you can redistribute it and/or
 *   modify it under the terms of the GNU Lesser General Public
 *   License as published by the Free Software Foundation; either
 *   version 2.1 of the License, or (at your option) any later version.
 *
 *   Granite Data Services is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser
 *   General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public
 *   License along with this library; if not, write to the Free Software
 *   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
 *   USA, or see <http://www.gnu.org/licenses/>.
 */
/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Person.as).
 */

package org.granite.test.tide.data {

    import flash.utils.ByteArray;
    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    
    import mx.collections.ArrayCollection;
    import mx.collections.ListCollectionView;
    
    import org.granite.meta;
    import org.granite.test.tide.AbstractEntity;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;
    import org.granite.util.Enum;

    use namespace meta;

    [Managed]
    [RemoteClass(alias="org.granite.test.tide.Document")]
    public class Document extends AbstractEntity {

		private var _documentLists:ListCollectionView = new ArrayCollection();
		private var _name:String;
		private var _payload:DocumentPayload;

		
		public function Document(id:Number = NaN, version:Number = NaN, uid:String = null):void {
			super(id, version, uid);
		}
        		
        public function set documentLists(value:ListCollectionView):void {
			_documentLists = value;
        }
		[Lazy]
        public function get documentLists():ListCollectionView {
            return _documentLists;
        }
		
		public function set name(value:String):void {
			_name = value;
		}
		public function get name():String {
			return _name;
		}
		
		public function set payload(value:DocumentPayload):void {
			_payload = value;
		}
		public function get payload():DocumentPayload {
			return _payload;
		}
		

        override meta function merge(em:IEntityManager, obj:*):void {
            var src:Document = Document(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
				em.meta_mergeExternal(src._documentLists, _documentLists, null, this, 'documentLists', function setter(o:*):void{_documentLists = o as ListCollectionView}) as ListCollectionView;
				em.meta_mergeExternal(src._name, _name, null, this, 'name', function setter(o:*):void{_name = o as String}) as String;
				em.meta_mergeExternal(src._payload, _payload, null, this, 'payload', function setter(o:*):void{_payload = o as DocumentPayload}) as DocumentPayload;
            }
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
				_documentLists = input.readObject() as ListCollectionView;
				_name = input.readObject() as String;
				_payload = input.readObject() as DocumentPayload;
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
				output.writeObject((_documentLists is IPropertyHolder) ? IPropertyHolder(_documentLists).object : _documentLists);
				output.writeObject((_name is IPropertyHolder) ? IPropertyHolder(_name).object : _name);
				output.writeObject((_payload is IPropertyHolder) ? IPropertyHolder(_payload).object : _payload);
            }
        }
    }
}

/**
 * Generated by Gas3 v2.3.2 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR. INSTEAD, EDIT THE INHERITED CLASS (Contact.as).
 */

package org.granite.example.addressbook.entity {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import org.granite.meta;
    import org.granite.tide.IEntityManager;
    import org.granite.tide.IPropertyHolder;

    use namespace meta;

    [Managed]
    public class ContactBase extends AbstractEntity {

        private var _address:Address;
        private var _email:String;
        private var _fax:String;
        private var _mobile:String;
        private var _person:Person;
        private var _phone:String;

        public function set address(value:Address):void {
            _address = value;
        }
        public function get address():Address {
            return _address;
        }

        public function set email(value:String):void {
            _email = value;
        }
        public function get email():String {
            return _email;
        }

        public function set fax(value:String):void {
            _fax = value;
        }
        public function get fax():String {
            return _fax;
        }

        public function set mobile(value:String):void {
            _mobile = value;
        }
        public function get mobile():String {
            return _mobile;
        }

        public function set person(value:Person):void {
            _person = value;
        }
        public function get person():Person {
            return _person;
        }

        public function set phone(value:String):void {
            _phone = value;
        }
        public function get phone():String {
            return _phone;
        }

        meta override function merge(em:IEntityManager, obj:*):void {
            var src:ContactBase = ContactBase(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
               em.meta_mergeExternal(src._address, _address, null, this, 'address', function setter(o:*):void{_address = o as Address}, false);
               em.meta_mergeExternal(src._email, _email, null, this, 'email', function setter(o:*):void{_email = o as String}, false);
               em.meta_mergeExternal(src._fax, _fax, null, this, 'fax', function setter(o:*):void{_fax = o as String}, false);
               em.meta_mergeExternal(src._mobile, _mobile, null, this, 'mobile', function setter(o:*):void{_mobile = o as String}, false);
               em.meta_mergeExternal(src._person, _person, null, this, 'person', function setter(o:*):void{_person = o as Person}, false);
               em.meta_mergeExternal(src._phone, _phone, null, this, 'phone', function setter(o:*):void{_phone = o as String}, false);
            }
        }

        public override function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
                _address = input.readObject() as Address;
                _email = input.readObject() as String;
                _fax = input.readObject() as String;
                _mobile = input.readObject() as String;
                _person = input.readObject() as Person;
                _phone = input.readObject() as String;
            }
        }

        public override function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
                output.writeObject((_address is IPropertyHolder) ? IPropertyHolder(_address).object : _address);
                output.writeObject((_email is IPropertyHolder) ? IPropertyHolder(_email).object : _email);
                output.writeObject((_fax is IPropertyHolder) ? IPropertyHolder(_fax).object : _fax);
                output.writeObject((_mobile is IPropertyHolder) ? IPropertyHolder(_mobile).object : _mobile);
                output.writeObject((_person is IPropertyHolder) ? IPropertyHolder(_person).object : _person);
                output.writeObject((_phone is IPropertyHolder) ? IPropertyHolder(_phone).object : _phone);
            }
        }
    }
}

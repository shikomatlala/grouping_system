using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Grouping_system
{

    #region Student
    public class Student
    {
        #region Member Variables
        protected int _stud_number;
        protected string _first_name;
        protected string _last_name;
        protected string _gender;
        protected string _id_nr;
        protected string _phone;
        protected string _email;
        protected string _address;
        #endregion
        #region Constructors
        public Student() { }
        public Student(string first_name, string last_name, string gender, string id_nr, string phone, string email, string address)
        {
            this._first_name=first_name;
            this._last_name=last_name;
            this._gender=gender;
            this._id_nr=id_nr;
            this._phone=phone;
            this._email=email;
            this._address=address;
        }
        #endregion
        #region Public Properties
        public virtual int Stud_number
        {
            get {return _stud_number;}
            set {_stud_number=value;}
        }
        public virtual string First_name
        {
            get {return _first_name;}
            set {_first_name=value;}
        }
        public virtual string Last_name
        {
            get {return _last_name;}
            set {_last_name=value;}
        }
        public virtual string Gender
        {
            get {return _gender;}
            set {_gender=value;}
        }
        public virtual string Id_nr
        {
            get {return _id_nr;}
            set {_id_nr=value;}
        }
        public virtual string Phone
        {
            get {return _phone;}
            set {_phone=value;}
        }
        public virtual string Email
        {
            get {return _email;}
            set {_email=value;}
        }
        public virtual string Address
        {
            get {return _address;}
            set {_address=value;}
        }
        #endregion
    }
    #endregion
}
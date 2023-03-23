using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace oop_task
{
    class employee
    {
        public string name;
        public int age;
        public int ID;
        public double salary;
        public double tax;
        public static string company = "CIS";
        public double work_hours;
        public string position;
        public static int count = 0;

        public employee(string name, int age)
        {
            this.name = name;
            this.age = age;
            count++;

        }
        public employee(int id)
        {
            this.ID = id;
            count++;
        }
        public employee(double salary, double tax)
        {

            this.salary = salary;
            this.tax = tax;
            count++;


        }
        public employee(double work_hours)
        {
            this.work_hours = work_hours;
            count++;
        }
        public employee(string position)
        {
            this.position = position;
            count++;
        }
        public void print()
        {
            Console.WriteLine("name" + name);
            Console.WriteLine("age" + age);
            Console.WriteLine("ID" + ID);
            Console.WriteLine("position" + position);
        }
        public void netsalary()
        {
            Console.WriteLine("net salary =" + (salary - (tax * salary)));
        }
        static void print_NumOfEmployee()
        {
            Console.WriteLine(count);
        }
        static bool compare(employee emp1 , employee emp2)
        {
            if (emp1.salary > emp2.salary)
                return true;
            else 
                return false;
        }



        internal class Program
        {
            static void Main(string[] args)
            {
                employee emp1 = new employee("Ali", 25);
                emp1 = new employee(100090607);
                emp1 = new employee("HR");
                emp1.print();
                emp1 = new employee(3000, 0.2);
                emp1 = new employee(6);
                 emp1.netsalary();

                employee emp2 = new employee("Mahmoud", 30);
                emp2 = new employee(1000908754);
                emp2 = new employee("Manager");
                emp2.print();
                emp2 = new employee(6000, 0.5);
                emp2 = new employee(7);
                emp2.netsalary();
                

                employee emp3 = new employee("Hazem", 27);
                emp3 = new employee(1000923764);
                emp3 = new employee("Accountant");
                emp3.print();
                emp3 = new employee(5000, 0.4);
                emp3 = new employee(7);
                emp3.netsalary();

                employee.print_NumOfEmployee();

               bool r = employee.compare(emp1 , emp2);
                Console.WriteLine(r);


            }
        }
    }
}

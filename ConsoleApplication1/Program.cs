using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppSecurity;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("admin"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("blanco"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("goni"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("jose"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("luis"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("maika"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("nerea"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("pedro"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("pepe"));
            Console.WriteLine(AppSecurity.AppSecurity.encriptar("vadillo"));
            Console.Read();
        }
    }
}

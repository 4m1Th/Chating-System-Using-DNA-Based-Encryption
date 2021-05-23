using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace DNAENCRIPTION
{
    public class DNAclass
    {

        public DNAclass()
        {

        }

        public string encrypt(string message)
        {
            string acgt = "";
            foreach (char c in message)
            {
                string cbyte = Convert.ToString(c, 2).PadLeft(8, '0');

                string[] s = new string[4];
                s[0] = cbyte.Substring(0, 2);
                s[1] = cbyte.Substring(2, 2);
                s[2] = cbyte.Substring(4, 2);
                s[3] = cbyte.Substring(6, 2);

                string ACGT = "";
                foreach (string a in s)
                {
                    if (a == "00")
                    {
                        ACGT += "A";
                    }
                    else if (a == "01")
                    {
                        ACGT += "C";
                    }
                    else if (a == "10")
                    {
                        ACGT += "G";
                    }
                    else if (a == "11")
                    {
                        ACGT += "T";
                    }
                }
                acgt = acgt + ACGT;
            }
            return acgt;
        }

        public string decrypt(string ciph)
        {
            int i = 0;
            string plaintext = "";
            string re = ciph;
            re = re.Replace("A", "00");
            re = re.Replace("C", "01");
            re = re.Replace("G", "10");
            re = re.Replace("T", "11");
            plaintext = Encoding.ASCII.GetString(GetBytes(re));

            return plaintext;
        }

        public Byte[] GetBytes(String str)
        {
            var list = new List<Byte>();
            for (int i = 0; i < str.Length; i += 8)
            {
                String t = str.Substring(i, 8);
                list.Add(Convert.ToByte(t, 2));
            }
            return list.ToArray();
        }
    }
}
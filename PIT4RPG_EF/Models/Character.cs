using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PIT4RPG.BU
{
    public partial class Character
    {
        public static Character ZoekCharacter(int id)
        {
            Character mijnCharacter;

            using (PIT4RPGModelContainer context = new PIT4RPGModelContainer())
            {
                mijnCharacter = context.CharacterSet.Find(id);
            }

            return mijnCharacter;
        }
        
        public void Vecht()
        {
            
        }
    }
}

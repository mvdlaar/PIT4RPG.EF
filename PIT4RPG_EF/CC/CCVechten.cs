using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using PIT4RPG.BU;

namespace PIT4RPG.CC
{
    class CCVechten
    {
        private Character mijnCharacter = Character.ZoekCharacter(42);

        public void Vechten()
        {
            mijnCharacter.Vecht();
        }

        public string GeefNaam()
        {
            return mijnCharacter.Naam;
        }

    }
}

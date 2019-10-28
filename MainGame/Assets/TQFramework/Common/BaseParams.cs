using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace TQ
{
    /// <summary>
    /// 基础参数
    /// </summary>
    public class BaseParams 
    {
        public int IntParam1;
        public int IntParam2;
        public int IntParam3;
        public int IntParam4;
        public int IntParam5;

        public float FloatParam1;
        public float FloatParam2;
        public float FloatParam3;
        public float FloatParam4;
        public float FloatParam5;

        public string StringParam1;
        public string StringParam2;
        public string StringParam3;
        public string StringParam4;
        public string StringParam5;

        public ulong ULongParams1;
        public ulong ULongParams2;
        public ulong ULongParams3;
        public ulong ULongParams4;
        public ulong ULongParams5;

        /// <summary>
        /// 重置
        /// </summary>
        public void Reset()
        {
            IntParam1 = IntParam2 = IntParam3 = IntParam4 = IntParam5 = 0;
            FloatParam1 = FloatParam2 = FloatParam3 = FloatParam4 = FloatParam5 = 0;
            StringParam1 = StringParam2 = StringParam3 = StringParam4 = StringParam5 = null;
            ULongParams1 = ULongParams2 = ULongParams3 = ULongParams4 = ULongParams5 = 0;
        }

    }
}


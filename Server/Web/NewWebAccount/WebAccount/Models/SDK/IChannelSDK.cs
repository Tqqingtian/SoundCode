using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebAccount.Models.SDK
{
    interface IChannelSDK
    {
        RetValue DoAction(string actionName, string userData, object parameter);
    }
}
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Del3.Startup))]
namespace Del3
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

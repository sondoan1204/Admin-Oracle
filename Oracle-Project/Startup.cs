using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Oracle_Project.Startup))]
namespace Oracle_Project
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

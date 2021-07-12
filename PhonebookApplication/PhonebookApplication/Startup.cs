using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Options;
using Microsoft.EntityFrameworkCore;
using PhonebookApplication.Dal.Concrete;
using PhonebookApplication.Interfaces;
using PhonebookApplication.ServiceLayer.Concrete;
using PhonebookApplication.Bll.Concrete;
using PhonebookApplication.Bll.Abstract;
using PhonebookApplication.Dal.Abstract;

namespace PhonebookApplication
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<PhonebookApplicationContext>(options =>
        options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));
            services.AddScoped<IPersonService, PersonService>();
            services.AddScoped<IPersonManager, PersonManager>();
            services.AddScoped<IPersonDal, EfPersonDal>();
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("SwaggerApi", new Microsoft.OpenApi.Models.OpenApiInfo
                {
                    Version = "v1",
                    Title = "Swagger API",
                    Description = "A simple example ASP .Net Core API"
                });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/SwaggerApi/swagger.json", "SwaggerAPI");
                c.RoutePrefix = string.Empty;
            });
        }
    }
}

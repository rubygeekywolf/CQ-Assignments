using Microsoft.EntityFrameworkCore;
using EmployeeRepository.Context;
var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<EmployeeContext>(option =>
{
    option.UseSqlServer(builder.Configuration["ConnectionString:SqlServer"]);
});
//builder.Services.AddCors(options => 
//                        {
//                            options.AddPolicy("AllowAngularOrigins",
//            builder =>
//            {
//                //builder.AllowAnyOrigin()
//                //                    .AllowAnyHeader()
//                //                    .AllowAnyMethod();
//            });
//                        });
//builder.Services.AddCors(options =>
//{
//    options.AddPolicy(name: "AllowAngularOrigins",
//                      policy =>
//                      {
//                          policy.AllowAnyHeader().Allow("*").AllowAnyMethod();
//                      });
//});

builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAngularOrigins",
    builder =>
    {
        builder.AllowAnyOrigin()
                      .AllowAnyHeader()
                      .AllowAnyMethod();
                     // .SetIsOriginAllowedToAllowWildcardSubdomains();
    });
});

var app = builder.Build();
app.UseCors("AllowAngularOrigins");


// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
//app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();


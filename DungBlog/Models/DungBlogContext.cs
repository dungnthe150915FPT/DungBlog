using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DungBlog.Models;

public partial class DungBlogContext : DbContext
{
    public DungBlogContext()
    {
    }

    public DungBlogContext(DbContextOptions<DungBlogContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Account> Accounts { get; set; }

    public virtual DbSet<Fashion> Fashions { get; set; }

    public virtual DbSet<Food> Foods { get; set; }

    public virtual DbSet<Game> Games { get; set; }

    public virtual DbSet<Life> Lives { get; set; }

    public virtual DbSet<Sport> Sports { get; set; }

    public virtual DbSet<Status> Statuses { get; set; }

    public virtual DbSet<Technology> Technologies { get; set; }

    public virtual DbSet<Travel> Travels { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        var builder = new ConfigurationBuilder()
                                      .SetBasePath(Directory.GetCurrentDirectory())
                                      .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
        IConfigurationRoot configuration = builder.Build();
        optionsBuilder.UseSqlServer(configuration.GetConnectionString("DungBlog"));
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Account>(entity =>
        {
            entity.ToTable("Account");

            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Address).HasMaxLength(150);
            entity.Property(e => e.Biography)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Dob)
                .HasColumnType("date")
                .HasColumnName("DOB");
            entity.Property(e => e.Fullname).HasMaxLength(50);
            entity.Property(e => e.Password)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(15)
                .IsUnicode(false);
            entity.Property(e => e.Username)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Fashion>(entity =>
        {
            entity.ToTable("Fashion");

            entity.Property(e => e.FashionId).HasColumnName("FashionID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.FashionName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Food>(entity =>
        {
            entity.ToTable("Food");

            entity.Property(e => e.FoodId).HasColumnName("FoodID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.FoodName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Game>(entity =>
        {
            entity.ToTable("Game");

            entity.Property(e => e.GameId).HasColumnName("GameID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.GameName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Life>(entity =>
        {
            entity.ToTable("Life");

            entity.Property(e => e.LifeId).HasColumnName("LifeID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.LifeName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Sport>(entity =>
        {
            entity.ToTable("Sport");

            entity.Property(e => e.SportId).HasColumnName("SportID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.SportName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Status>(entity =>
        {
            entity.ToTable("Status");

            entity.Property(e => e.StatusId).HasColumnName("StatusID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Status1)
                .IsUnicode(false)
                .HasColumnName("Status");
            entity.Property(e => e.Time).HasColumnType("date");
        });

        modelBuilder.Entity<Technology>(entity =>
        {
            entity.ToTable("Technology");

            entity.Property(e => e.TechnologyId).HasColumnName("TechnologyID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.TechnologyName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Travel>(entity =>
        {
            entity.ToTable("Travel");

            entity.Property(e => e.TravelId).HasColumnName("TravelID");
            entity.Property(e => e.AccountId).HasColumnName("AccountID");
            entity.Property(e => e.Body).IsUnicode(false);
            entity.Property(e => e.Time).HasColumnType("date");
            entity.Property(e => e.Tittle)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.TravelName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}

using System;
using System.Collections.Generic;

namespace DungBlog.Models;

public partial class Account
{
    public int AccountId { get; set; }

    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Fullname { get; set; } = null!;

    public DateTime Dob { get; set; }

    public bool Gender { get; set; }

    public string Address { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public string Biography { get; set; } = null!;

    public bool IsAdmin { get; set; }
}

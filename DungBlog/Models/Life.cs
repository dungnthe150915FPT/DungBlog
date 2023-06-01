using System;
using System.Collections.Generic;

namespace DungBlog.Models;

public partial class Life
{
    public int LifeId { get; set; }

    public string LifeName { get; set; } = null!;

    public DateTime Time { get; set; }

    public string Tittle { get; set; } = null!;

    public string Body { get; set; } = null!;

    public byte[]? Image { get; set; }

    public int AccountId { get; set; }
}

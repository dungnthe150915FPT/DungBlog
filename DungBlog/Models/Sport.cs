using System;
using System.Collections.Generic;

namespace DungBlog.Models;

public partial class Sport
{
    public int SportId { get; set; }

    public string SportName { get; set; } = null!;

    public DateTime Time { get; set; }

    public string Tittle { get; set; } = null!;

    public string Body { get; set; } = null!;

    public byte[]? Image { get; set; }

    public int AccountId { get; set; }
}

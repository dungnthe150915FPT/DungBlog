using System;
using System.Collections.Generic;

namespace DungBlog.Models;

public partial class Fashion
{
    public int FashionId { get; set; }

    public string FashionName { get; set; } = null!;

    public DateTime Time { get; set; }

    public string Tittle { get; set; } = null!;

    public string Body { get; set; } = null!;

    public byte[]? Image { get; set; }

    public int AccountId { get; set; }
}

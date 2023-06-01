using System;
using System.Collections.Generic;

namespace DungBlog.Models;

public partial class Status
{
    public int StatusId { get; set; }

    public string Status1 { get; set; } = null!;

    public DateTime Time { get; set; }

    public byte[]? Image { get; set; }

    public int AccountId { get; set; }
}

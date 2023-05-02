
  export const sortByDate = (posts: MarkdownInstance[]) => {
    return posts.sort(
      (a, b) =>
        new Date(b.frontmatter.pubDate).valueOf() -
        new Date(a.frontmatter.pubDate).valueOf()
    );
  };
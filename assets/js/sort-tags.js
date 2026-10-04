function sortTags(container) {
  if (!container) {
    return;
  }

  const tags = Array.from(container.children);
  tags.sort((a, b) => {
    const countDifference = Number(b.dataset.tagCount) - Number(a.dataset.tagCount);
    if (countDifference !== 0) {
      return countDifference;
    }

    return a.dataset.tagName.localeCompare(b.dataset.tagName, undefined, {
      sensitivity: "base",
    });
  });

  tags.forEach((tag) => container.appendChild(tag));
}

sortTags(document.getElementById("tag-index"));
sortTags(document.getElementById("tag-details"));

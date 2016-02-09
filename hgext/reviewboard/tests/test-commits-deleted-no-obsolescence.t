  changeset:  1:0b3e14fe3ff1
  changeset:  2:bce658a3f6d6
  changeset:  3:713878e22d95
  changeset:  4:4d0f846364eb
  changeset:  5:4e50148c492d
  changeset:  1:0b3e14fe3ff1
  changeset:  2:bce658a3f6d6
  changeset:  3:713878e22d95
  changeset:  4:4d0f846364eb
    p2rb.reviewer_map: '{}'
  commit_extra_data:
    p2rb.commits: '[["0b3e14fe3ff19019110705e72dcf563c0ef551f6", 2], ["bce658a3f6d6aa04bf5c449e0e779e839de4690e",
      3], ["713878e22d952d478e88bfdef897fdfc73060351", 4], ["4d0f846364eb509a1b6ae3294f05439101f6e7d3",
      5], ["4e50148c492dde95397cd666f2d4e4ad4fd2176f", 6]]'
  approval_failure: Commit 0b3e14fe3ff19019110705e72dcf563c0ef551f6 is not approved.
      p2rb.reviewer_map: '{}'
    commit_extra_data:
      p2rb.commits: '[["0b3e14fe3ff19019110705e72dcf563c0ef551f6", 2], ["bce658a3f6d6aa04bf5c449e0e779e839de4690e",
        3], ["713878e22d952d478e88bfdef897fdfc73060351", 4], ["4d0f846364eb509a1b6ae3294f05439101f6e7d3",
  description:
  - Bug 1 - Foo 5
  - ''
  - 'MozReview-Commit-ID: JmjAjw'
  commit_extra_data:
    p2rb.commit_id: 4e50148c492dde95397cd666f2d4e4ad4fd2176f
    base_commit_id: 4d0f846364eb509a1b6ae3294f05439101f6e7d3
Dropping the first commit should have no effect since commit ids map to
appropriate review requests
  changeset:  1:eeb6d49dcb09
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3 (draft)
  changeset:  2:607f375f35c0
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/4 (draft)
  changeset:  3:81ee86efd38f
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/5 (draft)
The review request corresponding to the dropped commit has no draft
  description:
  - Bug 1 - Foo 1
  - ''
  - 'MozReview-Commit-ID: 124Bxg'
  commit_extra_data:
    p2rb.commit_id: 0b3e14fe3ff19019110705e72dcf563c0ef551f6

Review request 2 should be marked as discard on publish

  $ rbmanage dumpreview 1
  id: 1
  status: pending
  public: true
  bugs:
  - '1'
  commit: bz://1/mynick
  submitter: default+5
  summary: bz://1/mynick
  description: This is the parent review request
  target_people: []
  extra_data:
    calculated_trophies: true
    p2rb.reviewer_map: '{}'
  commit_extra_data:
    p2rb: true
    p2rb.base_commit: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    p2rb.commits: '[["0b3e14fe3ff19019110705e72dcf563c0ef551f6", 2], ["bce658a3f6d6aa04bf5c449e0e779e839de4690e",
      3], ["713878e22d952d478e88bfdef897fdfc73060351", 4], ["4d0f846364eb509a1b6ae3294f05439101f6e7d3",
      5]]'
    p2rb.discard_on_publish_rids: '[2]'
    p2rb.first_public_ancestor: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    p2rb.identifier: bz://1/mynick
    p2rb.is_squashed: true
    p2rb.unpublished_rids: '[]'
  diffs:
  - id: 1
    revision: 1
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - diff --git a/foo5 b/foo5
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo5
    - '@@ -0,0 +1,1 @@'
    - +foo5
    - ''
  - id: 7
    revision: 2
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - ''
  approved: false
  approval_failure: Commit 0b3e14fe3ff19019110705e72dcf563c0ef551f6 is not approved.
    commit: bz://1/mynick
    summary: bz://1/mynick
    description: This is the parent review request
      p2rb.reviewer_map: '{"3": [], "2": [], "5": [], "4": []}'
    commit_extra_data:
      p2rb.base_commit: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
      p2rb.commits: '[["eeb6d49dcb0950d771959358f662cf2e5ddc9dc1", 3], ["607f375f35c0866a8e08bc1d6aaecc6ad259ed6e",
        4], ["81ee86efd38ff60717aeeeff153292e84e58be0b", 5]]'
      p2rb.discard_on_publish_rids: '[]'
      p2rb.is_squashed: true
      p2rb.unpublished_rids: '[]'
    - id: 8
      revision: 3
      - diff --git a/foo3 b/foo3
      - new file mode 100644
      - '--- /dev/null'
      - +++ b/foo3
      - '@@ -0,0 +1,1 @@'
      - +foo3
      - diff --git a/foo4 b/foo4
      - new file mode 100644
      - '--- /dev/null'
      - +++ b/foo4
      - '@@ -0,0 +1,1 @@'
      - +foo4
Publish to get us up to date, but we're not going to test the publishing
behaviour here. We'll save that for other tests.

  $ rbmanage publish 1

Try removing a commit in the middle.

  $ hg -q rebase -s 3 -d 1
  $ hg strip -r 2 --no-backup

  $ hg push
  pushing to ssh://$DOCKER_HOSTNAME:$HGPORT6/test-repo
  searching for changes
  remote: adding changesets
  remote: adding manifests
  remote: adding file changes
  remote: added 1 changesets with 0 changes to 1 files (+1 heads)
  remote: recorded push in pushlog
  submitting 2 changesets for review
  
  changeset:  1:eeb6d49dcb09
  summary:    Bug 1 - Foo 2
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3
  
  changeset:  2:a27a94c54524
  summary:    Bug 1 - Foo 4
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/5 (draft)
  
  review id:  bz://1/mynick
  review url: http://$DOCKER_HOSTNAME:$HGPORT1/r/1 (draft)
  (review requests lack reviewers; visit review url to assign reviewers)
  (visit review url to publish these review requests so others can see them)

The parent review should have been updated accordingly
    p2rb.reviewer_map: '{"3": [], "2": [], "5": [], "4": []}'
  commit_extra_data:
    p2rb.commits: '[["eeb6d49dcb0950d771959358f662cf2e5ddc9dc1", 3], ["607f375f35c0866a8e08bc1d6aaecc6ad259ed6e",
      4], ["81ee86efd38ff60717aeeeff153292e84e58be0b", 5]]'
    p2rb.discard_on_publish_rids: '[4]'
  - id: 8
    revision: 3
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - ''
  approval_failure: Commit eeb6d49dcb0950d771959358f662cf2e5ddc9dc1 is not approved.
      p2rb.reviewer_map: '{"3": [], "5": [], "4": []}'
    commit_extra_data:
      p2rb.commits: '[["eeb6d49dcb0950d771959358f662cf2e5ddc9dc1", 3], ["a27a94c54524d4331dec2f92f647067bfd6dfbd4",
        5]]'
    - id: 12
      revision: 4
Deleting a commit and adding a commit will recycle a review request
because of an unclaimed review request
TODO this is sub-optimal. We should consider changing the review request
recycling behavior when commit IDs are present.
  $ hg -q up eeb6d49dcb09
  $ echo foo6 > foo6
  $ hg -q commit -A -m 'Bug 1 - Foo 6'
  $ hg --config mozreview.autopublish=true push
  remote: added 1 changesets with 1 changes to 1 files (+1 heads)
  changeset:  1:eeb6d49dcb09
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/3
  changeset:  3:3b99865d1bab
  summary:    Bug 1 - Foo 6
  review:     http://$DOCKER_HOSTNAME:$HGPORT1/r/4 (draft)
  $ rbmanage dumpreview 1
  id: 1
  status: pending
  public: true
  bugs:
  - '1'
  commit: bz://1/mynick
  submitter: default+5
  summary: bz://1/mynick
  description: This is the parent review request
  target_people: []
  extra_data:
    calculated_trophies: true
    p2rb.reviewer_map: '{"3": [], "2": [], "5": [], "4": []}'
  commit_extra_data:
    p2rb: true
    p2rb.base_commit: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    p2rb.commits: '[["eeb6d49dcb0950d771959358f662cf2e5ddc9dc1", 3], ["607f375f35c0866a8e08bc1d6aaecc6ad259ed6e",
      4], ["81ee86efd38ff60717aeeeff153292e84e58be0b", 5]]'
    p2rb.discard_on_publish_rids: '[5]'
    p2rb.first_public_ancestor: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    p2rb.identifier: bz://1/mynick
    p2rb.is_squashed: true
    p2rb.unpublished_rids: '[]'
  diffs:
  - id: 1
    revision: 1
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - diff --git a/foo5 b/foo5
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo5
    - '@@ -0,0 +1,1 @@'
    - +foo5
    - ''
  - id: 7
    revision: 2
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo1 b/foo1
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo1
    - '@@ -0,0 +1,1 @@'
    - +foo1
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - ''
  - id: 8
    revision: 3
    base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
    name: diff
    extra: {}
    patch:
    - diff --git a/foo2 b/foo2
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo2
    - '@@ -0,0 +1,1 @@'
    - +foo2
    - diff --git a/foo3 b/foo3
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo3
    - '@@ -0,0 +1,1 @@'
    - +foo3
    - diff --git a/foo4 b/foo4
    - new file mode 100644
    - '--- /dev/null'
    - +++ b/foo4
    - '@@ -0,0 +1,1 @@'
    - +foo4
    - ''
  approved: false
  approval_failure: Commit eeb6d49dcb0950d771959358f662cf2e5ddc9dc1 is not approved.
  draft:
    bugs:
    - '1'
    commit: bz://1/mynick
    summary: bz://1/mynick
    description: This is the parent review request
    target_people: []
    extra:
      calculated_trophies: true
      p2rb.reviewer_map: '{"3": [], "5": []}'
    commit_extra_data:
      p2rb: true
      p2rb.base_commit: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
      p2rb.commits: '[["eeb6d49dcb0950d771959358f662cf2e5ddc9dc1", 3], ["3b99865d1bab8480235d913f4bcfc951fd9e3032",
        4]]'
      p2rb.discard_on_publish_rids: '[]'
      p2rb.first_public_ancestor: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
      p2rb.identifier: bz://1/mynick
      p2rb.is_squashed: true
      p2rb.unpublished_rids: '[]'
    diffs:
    - id: 14
      revision: 4
      base_commit_id: 93d9429b41ecf0d2ad8c62b6ea26686dd20330f4
      name: diff
      extra: {}
      patch:
      - diff --git a/foo2 b/foo2
      - new file mode 100644
      - '--- /dev/null'
      - +++ b/foo2
      - '@@ -0,0 +1,1 @@'
      - +foo2
      - diff --git a/foo6 b/foo6
      - new file mode 100644
      - '--- /dev/null'
      - +++ b/foo6
      - '@@ -0,0 +1,1 @@'
      - +foo6
      - ''

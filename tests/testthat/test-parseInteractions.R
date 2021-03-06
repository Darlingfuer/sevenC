context("parseInteractions")


exampleLoopFile <- system.file("extdata",
                               "GM12878_HiCCUPS.chr22_1-30000000.loop.txt",
                               package = "sevenC")



toySeqInfo <- Seqinfo(seqnames = c("chr1", "chr22"),
                                    seqlengths = c(10^8, 10^8),
                                    isCircular = c(FALSE, FALSE),
                                    genome = "toy")

test_that("parseLoopsRao works with example file", {

  gi <- parseLoopsRao(exampleLoopFile)

  df <- read.table(exampleLoopFile, header = TRUE)

  expect_equal(length(gi),  nrow(df))
  expect_true(all(
    seqnames(regions(gi)) == "chr22"
    ))
})

test_that("parseLoopsRao works toy genome as seqinfo", {

  gi <- parseLoopsRao(exampleLoopFile, seqinfo=toySeqInfo)

  expect_identical(seqinfo(gi), toySeqInfo)

})

test_that("parseLoopsTang works with example file", {

  exampleLoopTang2015File <- system.file(
    "extdata",
    "ChIA-PET_GM12878_Tang2015.chr22_1-30000000.clusters.txt",
    package = "sevenC")

  gi <- parseLoopsTang(exampleLoopTang2015File)

  df <- read.table(exampleLoopTang2015File, header = FALSE)

  expect_equal(length(gi),  nrow(df))
  expect_true(all(
    seqnames(regions(gi)) == "chr22"
  ))
  expect_equal(gi$score, df$V7)

})

const express = require("express");
const router = express.Router();
const db = require("../util");

router.post("/api/status-count", async (req, res) => {
  const { user_id } = req.body;

  try {
    const { totalCandidates, joinedCandidates, interviewCandidates } =
      await getStatusCountsFromDatabase(user_id);

    res.json({
      Uid: user_id,
      TotalCandidates: totalCandidates,
      Joined: joinedCandidates,
      Interview: interviewCandidates,
    });
  } catch (error) {
    console.error("Error fetching status counts:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

async function getStatusCountsFromDatabase(user_id) {
  const totalCandidates = 3;
  const joinedCandidates = 2;
  const interviewCandidates = 1;

  return { totalCandidates, joinedCandidates, interviewCandidates };
}

module.exports = router;

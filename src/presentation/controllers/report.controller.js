const { createReportUC } = require('../../application/services/report/uploadAssetsToDB.uc');

const reportController = {
    async createReport(req, res) {
        try {
            const { reportId, reportData } = req.body;
            const { success, message, data } = await createReportUC(reportId, reportData);

            if (success) {
                res.status(200).json({ success, message, data });
            } else {
                res.status(500).json({ success, message, data });
            }
        } catch (error) {
            console.error('Error creating report:', error);
            res.status(500).json({ success: false, message: error.message });
        }
    },
};

module.exports = reportController;